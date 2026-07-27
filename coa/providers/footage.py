"""Подбор футажа: сначала локальный архив, потом стоковый добор."""

from __future__ import annotations

import json
import re
from dataclasses import dataclass
from pathlib import Path


from coa.config import Config

VIDEO_EXTENSIONS = {".mp4", ".mov", ".mkv", ".m4v", ".avi", ".webm"}
INDEX_NAME = ".coa-index.json"


@dataclass
class ClipMatch:
    path: str
    source: str
    score: int


def _tokens(text: str) -> set[str]:
    return {t for t in re.split(r"[^a-z0-9]+", text.lower()) if len(t) > 2}


class FootageLibrary:
    """Индекс локального архива. Ключевые слова берутся из пути и имени файла.

    Никаких моделей зрения: имена файлов и папки — это то, чем режиссёр уже
    разметил архив ("lions/buffalo-charge-02.mp4" → lions, buffalo, charge).
    Если архив не размечен, добор пойдёт через сток.
    """

    def __init__(self, root: Path) -> None:
        self.root = root
        self._index: dict[str, set[str]] = {}

    def build(self, *, force: bool = False) -> int:
        cache = self.root / INDEX_NAME
        if cache.exists() and not force:
            data = json.loads(cache.read_text(encoding="utf-8"))
            self._index = {k: set(v) for k, v in data.items()}
            return len(self._index)

        if not self.root.exists():
            return 0

        for path in self.root.rglob("*"):
            if path.suffix.lower() not in VIDEO_EXTENSIONS:
                continue
            relative = path.relative_to(self.root)
            self._index[str(path)] = _tokens(str(relative))

        cache.write_text(
            json.dumps({k: sorted(v) for k, v in self._index.items()}, indent=2),
            encoding="utf-8",
        )
        return len(self._index)

    def find(self, keywords: list[str], *, used: set[str]) -> ClipMatch | None:
        """Лучший неиспользованный клип по пересечению ключевых слов."""
        wanted = _tokens(" ".join(keywords))
        if not wanted:
            return None
        best: ClipMatch | None = None
        for path, tokens in self._index.items():
            if path in used:
                continue
            overlap = len(wanted & tokens)
            if overlap and (best is None or overlap > best.score):
                best = ClipMatch(path=path, source="archive", score=overlap)
        return best


def fetch_stock(keywords: list[str], out_dir: Path, config: Config) -> ClipMatch | None:
    """Добор сцены со стока Pexels. Возвращает None, если ключа нет или ничего не нашлось."""
    import requests

    if not config.pexels_api_key:
        return None

    query = " ".join(keywords[:3])
    response = requests.get(
        "https://api.pexels.com/videos/search",
        headers={"Authorization": config.pexels_api_key},
        params={"query": query, "per_page": 1, "orientation": "landscape", "size": "medium"},
        timeout=60,
    )
    response.raise_for_status()
    videos = response.json().get("videos") or []
    if not videos:
        return None

    files = sorted(
        (f for f in videos[0]["video_files"] if f.get("width")),
        key=lambda f: abs(f["width"] - 1920),
    )
    if not files:
        return None

    out_dir.mkdir(parents=True, exist_ok=True)
    out_path = out_dir / f"stock-{videos[0]['id']}.mp4"
    if not out_path.exists():
        with requests.get(files[0]["link"], stream=True, timeout=300) as download:
            download.raise_for_status()
            with out_path.open("wb") as handle:
                for chunk in download.iter_content(chunk_size=1 << 20):
                    handle.write(chunk)
    return ClipMatch(path=str(out_path), source="pexels", score=1)
