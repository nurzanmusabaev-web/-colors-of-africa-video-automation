"""Структуры данных проекта. Всё сериализуется в project.json."""

from __future__ import annotations

import json
import re
from dataclasses import asdict, dataclass, field
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


def slugify(text: str) -> str:
    slug = re.sub(r"[^a-z0-9]+", "-", text.lower()).strip("-")
    return slug[:60] or "untitled"


def utcnow() -> str:
    return datetime.now(timezone.utc).isoformat(timespec="seconds")


@dataclass
class TitleCandidate:
    text: str
    score: int = 0
    reasons: list[str] = field(default_factory=list)


@dataclass
class Shot:
    """Один визуальный кусок таймлайна."""

    index: int
    narration: str
    # Поисковые термины для подбора футажа: ["lion", "buffalo", "charge"]
    keywords: list[str] = field(default_factory=list)
    duration_sec: float = 0.0
    clip_path: str | None = None
    source: str | None = None  # archive | pexels | missing


@dataclass
class Segment:
    index: int
    heading: str
    shots: list[Shot] = field(default_factory=list)


@dataclass
class Project:
    slug: str
    topic: str
    created_at: str = field(default_factory=utcnow)

    # ideate
    angle: str | None = None
    premise: str | None = None

    # package
    titles: list[TitleCandidate] = field(default_factory=list)
    chosen_title: str | None = None
    thumbnail_concept: str | None = None
    packaging_score: int = 0

    # script
    hook: str | None = None
    segments: list[Segment] = field(default_factory=list)

    # voice / broll / assemble
    voiceover_path: str | None = None
    video_path: str | None = None
    thumbnail_path: str | None = None

    # metadata
    description: str | None = None
    tags: list[str] = field(default_factory=list)
    chapters: list[dict[str, Any]] = field(default_factory=list)

    # upload
    video_id: str | None = None

    completed_stages: list[str] = field(default_factory=list)
    approvals: list[str] = field(default_factory=list)

    # ---- сериализация ----

    def to_dict(self) -> dict[str, Any]:
        return asdict(self)

    @classmethod
    def from_dict(cls, data: dict[str, Any]) -> "Project":
        titles = [TitleCandidate(**t) for t in data.pop("titles", [])]
        segments = [
            Segment(
                index=s["index"],
                heading=s["heading"],
                shots=[Shot(**sh) for sh in s.get("shots", [])],
            )
            for s in data.pop("segments", [])
        ]
        project = cls(**data)
        project.titles = titles
        project.segments = segments
        return project

    # ---- работа с диском ----

    @property
    def dir(self) -> Path:
        from coa.config import PROJECTS_DIR

        return PROJECTS_DIR / self.slug

    @property
    def assets_dir(self) -> Path:
        return self.dir / "assets"

    def save(self) -> None:
        self.assets_dir.mkdir(parents=True, exist_ok=True)
        path = self.dir / "project.json"
        path.write_text(
            json.dumps(self.to_dict(), ensure_ascii=False, indent=2), encoding="utf-8"
        )

    @classmethod
    def load(cls, slug: str) -> "Project":
        from coa.config import PROJECTS_DIR

        path = PROJECTS_DIR / slug / "project.json"
        if not path.exists():
            raise FileNotFoundError(f"Проект '{slug}' не найден: {path}")
        return cls.from_dict(json.loads(path.read_text(encoding="utf-8")))

    def all_shots(self) -> list[Shot]:
        return [shot for segment in self.segments for shot in segment.shots]
