"""Обёртки над ffmpeg. Здесь — весь монтаж."""

from __future__ import annotations

import shutil
import subprocess
from pathlib import Path


class FFmpegMissing(RuntimeError):
    pass


def require_ffmpeg() -> None:
    for binary in ("ffmpeg", "ffprobe"):
        if shutil.which(binary) is None:
            raise FFmpegMissing(
                f"Не найден {binary}. Установи ffmpeg: "
                "apt install ffmpeg / brew install ffmpeg"
            )


def _run(args: list[str]) -> None:
    result = subprocess.run(args, capture_output=True, text=True)
    if result.returncode != 0:
        raise RuntimeError(f"ffmpeg упал:\n{' '.join(args)}\n{result.stderr[-4000:]}")


def probe_duration(path: Path) -> float:
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


def normalize_clip(
    src: Path, dst: Path, *, duration: float, width: int, height: int, fps: int
) -> Path:
    """Приводит клип к единому формату и обрезает/зацикливает до нужной длительности.

    Разные исходники приходят с разным fps, размером и SAR. Без нормализации
    склейка concat разваливается, поэтому это делается для каждого клипа.
    """
    dst.parent.mkdir(parents=True, exist_ok=True)
    vf = (
        f"scale={width}:{height}:force_original_aspect_ratio=increase,"
        f"crop={width}:{height},fps={fps},setsar=1"
    )
    _run([
        "ffmpeg", "-y",
        "-stream_loop", "-1",       # короткий клип зацикливается до нужной длины
        "-i", str(src),
        "-t", f"{duration:.3f}",
        "-vf", vf,
        "-an",
        "-c:v", "libx264", "-preset", "veryfast", "-crf", "20",
        "-pix_fmt", "yuv420p",
        str(dst),
    ])
    return dst


def make_color_clip(
    dst: Path, *, duration: float, width: int, height: int, fps: int, color: str = "black"
) -> Path:
    """Заглушка на случай, если под сцену не нашлось ни архивного, ни стокового клипа."""
    dst.parent.mkdir(parents=True, exist_ok=True)
    _run([
        "ffmpeg", "-y",
        "-f", "lavfi", "-i", f"color=c={color}:s={width}x{height}:r={fps}",
        "-t", f"{duration:.3f}",
        "-c:v", "libx264", "-preset", "veryfast", "-crf", "20",
        "-pix_fmt", "yuv420p",
        str(dst),
    ])
    return dst


def concat(clips: list[Path], dst: Path) -> Path:
    """Склейка нормализованных клипов через concat demuxer (без перекодирования)."""
    dst.parent.mkdir(parents=True, exist_ok=True)
    listing = dst.parent / "concat.txt"
    listing.write_text(
        "\n".join(f"file '{clip.resolve()}'" for clip in clips), encoding="utf-8"
    )
    _run([
        "ffmpeg", "-y",
        "-f", "concat", "-safe", "0", "-i", str(listing),
        "-c", "copy",
        str(dst),
    ])
    return dst


def concat_audio(tracks: list[Path], dst: Path) -> Path:
    """Склейка аудиодорожек с перекодированием.

    Дорожки приходят от TTS в разных форматах (mp3 от облачных провайдеров,
    wav от заглушки), поэтому copy-склейка не годится — нужен пересбор.
    """
    dst.parent.mkdir(parents=True, exist_ok=True)
    listing = dst.parent / "concat-audio.txt"
    listing.write_text(
        "\n".join(f"file '{track.resolve()}'" for track in tracks), encoding="utf-8"
    )
    _run([
        "ffmpeg", "-y",
        "-f", "concat", "-safe", "0", "-i", str(listing),
        "-c:a", "pcm_s16le", "-ar", "44100", "-ac", "1",
        str(dst),
    ])
    return dst


def mux(video: Path, audio: Path, dst: Path) -> Path:
    """Сводит видеоряд с озвучкой. Длительность обрезается по короткой дорожке."""
    dst.parent.mkdir(parents=True, exist_ok=True)
    _run([
        "ffmpeg", "-y",
        "-i", str(video),
        "-i", str(audio),
        "-map", "0:v:0", "-map", "1:a:0",
        "-c:v", "copy",
        "-c:a", "aac", "-b:a", "192k",
        "-shortest",
        str(dst),
    ])
    return dst


def grab_frame(video: Path, dst: Path, *, at_sec: float) -> Path:
    """Кадр из видео — основа для превью."""
    dst.parent.mkdir(parents=True, exist_ok=True)
    _run([
        "ffmpeg", "-y",
        "-ss", f"{at_sec:.3f}", "-i", str(video),
        "-frames:v", "1", "-q:v", "2",
        str(dst),
    ])
    return dst
