"""Конфигурация пайплайна: переменные окружения + профиль канала."""

from __future__ import annotations

import os
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any

import yaml

ROOT = Path(__file__).resolve().parent.parent
PROJECTS_DIR = ROOT / "projects"
PROFILE_PATH = ROOT / "channel" / "profile.yaml"


def _load_dotenv() -> None:
    """Читает .env без внешней зависимости. Уже установленные переменные не трогает."""
    env_path = ROOT / ".env"
    if not env_path.exists():
        return
    for line in env_path.read_text(encoding="utf-8").splitlines():
        line = line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, _, value = line.partition("=")
        os.environ.setdefault(key.strip(), value.strip())


@dataclass
class Config:
    llm_model: str
    anthropic_api_key: str | None
    tts_provider: str
    tts_voice: str
    elevenlabs_api_key: str | None
    elevenlabs_voice_id: str | None
    openai_api_key: str | None
    footage_dir: Path
    pexels_api_key: str | None
    yt_client_secret: Path
    yt_token: Path
    min_packaging_score: int
    profile: dict[str, Any] = field(default_factory=dict)

    @property
    def channel_id(self) -> str:
        return os.environ.get("COA_YT_CHANNEL_ID") or self.profile["channel"]["id"]


def load_config() -> Config:
    _load_dotenv()
    profile = yaml.safe_load(PROFILE_PATH.read_text(encoding="utf-8"))
    return Config(
        llm_model=os.environ.get("COA_LLM_MODEL", "claude-opus-5"),
        anthropic_api_key=os.environ.get("ANTHROPIC_API_KEY"),
        tts_provider=os.environ.get("COA_TTS_PROVIDER", "none").lower(),
        tts_voice=os.environ.get("COA_TTS_VOICE", "onyx"),
        elevenlabs_api_key=os.environ.get("ELEVENLABS_API_KEY"),
        elevenlabs_voice_id=os.environ.get("ELEVENLABS_VOICE_ID"),
        openai_api_key=os.environ.get("OPENAI_API_KEY"),
        footage_dir=Path(os.environ.get("COA_FOOTAGE_DIR", ROOT / "footage")).expanduser(),
        pexels_api_key=os.environ.get("PEXELS_API_KEY"),
        yt_client_secret=Path(os.environ.get("COA_YT_CLIENT_SECRET", ROOT / "client_secret.json")),
        yt_token=Path(os.environ.get("COA_YT_TOKEN", ROOT / "token.json")),
        min_packaging_score=int(os.environ.get("COA_MIN_PACKAGING_SCORE", "70")),
        profile=profile,
    )
