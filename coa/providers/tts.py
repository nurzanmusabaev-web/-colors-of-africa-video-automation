"""Озвучка. Провайдер выбирается через COA_TTS_PROVIDER."""

from __future__ import annotations

import subprocess
import wave
from pathlib import Path


from coa.config import Config


class TTSError(RuntimeError):
    pass


def synthesize(text: str, out_path: Path, config: Config) -> Path:
    """Озвучивает текст и возвращает путь к аудиофайлу."""
    out_path.parent.mkdir(parents=True, exist_ok=True)
    provider = config.tts_provider

    if provider == "elevenlabs":
        return _elevenlabs(text, out_path, config)
    if provider == "openai":
        return _openai(text, out_path, config)
    if provider == "none":
        return _silence(text, out_path)
    raise TTSError(f"Неизвестный TTS-провайдер: {provider}")


def _elevenlabs(text: str, out_path: Path, config: Config) -> Path:
    import requests

    if not config.elevenlabs_api_key or not config.elevenlabs_voice_id:
        raise TTSError("Нужны ELEVENLABS_API_KEY и ELEVENLABS_VOICE_ID")
    url = (
        "https://api.elevenlabs.io/v1/text-to-speech/"
        f"{config.elevenlabs_voice_id}?output_format=mp3_44100_128"
    )
    response = requests.post(
        url,
        headers={"xi-api-key": config.elevenlabs_api_key, "Content-Type": "application/json"},
        json={
            "text": text,
            "model_id": "eleven_multilingual_v2",
            # Низкий stability даёт живую подачу — для документалки о хищниках это уместно.
            "voice_settings": {"stability": 0.4, "similarity_boost": 0.75},
        },
        timeout=300,
    )
    response.raise_for_status()
    mp3_path = out_path.with_suffix(".mp3")
    mp3_path.write_bytes(response.content)
    return mp3_path


def _openai(text: str, out_path: Path, config: Config) -> Path:
    import requests

    if not config.openai_api_key:
        raise TTSError("Нужен OPENAI_API_KEY")
    response = requests.post(
        "https://api.openai.com/v1/audio/speech",
        headers={"Authorization": f"Bearer {config.openai_api_key}"},
        json={"model": "tts-1-hd", "voice": config.tts_voice, "input": text},
        timeout=300,
    )
    response.raise_for_status()
    mp3_path = out_path.with_suffix(".mp3")
    mp3_path.write_bytes(response.content)
    return mp3_path


def _silence(text: str, out_path: Path) -> Path:
    """Тишина нужной длительности — чтобы прогнать пайплайн без ключей TTS."""
    # ~150 слов в минуту для дикторской начитки.
    duration = max(1.0, len(text.split()) / 150 * 60)
    wav_path = out_path.with_suffix(".wav")
    with wave.open(str(wav_path), "wb") as handle:
        handle.setnchannels(1)
        handle.setsampwidth(2)
        handle.setframerate(44100)
        handle.writeframes(b"\x00\x00" * int(44100 * duration))
    return wav_path


def audio_duration(path: Path) -> float:
    """Длительность аудио через ffprobe."""
    result = subprocess.run(
        [
            "ffprobe", "-v", "error", "-show_entries", "format=duration",
            "-of", "default=noprint_wrappers=1:nokey=1", str(path),
        ],
        capture_output=True,
        text=True,
        check=True,
    )
    return float(result.stdout.strip())
