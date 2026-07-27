"""Сквозной прогон монтажных стадий без LLM и без ключей.

Проверяет реальный ffmpeg-конвейер: озвучка → футаж → рендер → превью.
Требует установленный ffmpeg. Запуск: python3 tests/test_media_pipeline.py
"""

from __future__ import annotations

import os
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

# Стадии должны работать без сети: озвучка — тишиной, футаж — из локального архива.
os.environ["COA_TTS_PROVIDER"] = "none"
os.environ.pop("PEXELS_API_KEY", None)

from coa.config import load_config  # noqa: E402
from coa.media import probe_duration  # noqa: E402
from coa.models import Project, Segment, Shot  # noqa: E402
from coa.stages import Context, get_stage  # noqa: E402

SLUG = "smoke-test-project"
FIXTURE_FOOTAGE = ROOT / "projects" / SLUG / "fixture-footage"


def _make_fixture_clips() -> None:
    """Синтетические клипы вместо реального архива — с осмысленными именами."""
    FIXTURE_FOOTAGE.mkdir(parents=True, exist_ok=True)
    for name, color in (("lion-charge-01.mp4", "orange"), ("buffalo-herd-02.mp4", "green")):
        path = FIXTURE_FOOTAGE / name
        if path.exists():
            continue
        subprocess.run(
            [
                "ffmpeg", "-y", "-f", "lavfi",
                "-i", f"color=c={color}:s=640x360:r=30",
                "-t", "3", "-c:v", "libx264", "-pix_fmt", "yuv420p", str(path),
            ],
            capture_output=True,
            check=True,
        )


def _make_project() -> Project:
    project = Project(slug=SLUG, topic="smoke test")
    project.chosen_title = "Why This Lion Never Attacks a Buffalo Alone"
    project.thumbnail_concept = 'Close-up of a lion\'s jaws in backlit dust, text "ONE MISTAKE"'
    project.hook = "The pride had hunted here for years."
    project.segments = [
        Segment(
            index=0,
            heading="Cold open",
            shots=[
                Shot(index=0, narration="The pride had hunted here for years.",
                     keywords=["lion", "charge"]),
            ],
        ),
        Segment(
            index=1,
            heading="The standoff",
            shots=[
                Shot(index=1, narration="Then the herd stopped running away.",
                     keywords=["buffalo", "herd"]),
                Shot(index=2, narration="Nothing in the savanna prepared them for this.",
                     keywords=["nonexistent", "keyword"]),
            ],
        ),
    ]
    return project


def main() -> int:
    if shutil.which("ffmpeg") is None:
        print("SKIP: ffmpeg не установлен")
        return 0

    project_dir = ROOT / "projects" / SLUG
    if project_dir.exists():
        shutil.rmtree(project_dir)

    _make_fixture_clips()
    os.environ["COA_FOOTAGE_DIR"] = str(FIXTURE_FOOTAGE)

    project = _make_project()
    project.save()
    ctx = Context(load_config())

    failures = 0
    for name in ("voice", "broll", "assemble", "thumbnail"):
        print(f"\n=== {name} ===")
        try:
            get_stage(name).run(project, ctx)
            project.completed_stages.append(name)
            project.save()
        except Exception as error:  # noqa: BLE001
            print(f"FAIL {name}: {error}")
            failures += 1
            break

    if failures:
        return 1

    checks = [
        ("озвучка создана", Path(project.voiceover_path).exists()),
        ("видео создано", Path(project.video_path).exists()),
        ("превью создано", Path(project.thumbnail_path).exists()),
        ("превью до 2 МБ", Path(project.thumbnail_path).stat().st_size <= 2 * 1024 * 1024),
        (
            "клип нашёлся в архиве по ключевым словам",
            any(s.source == "archive" for s in project.all_shots()),
        ),
        (
            "ненайденная сцена помечена как missing",
            any(s.source == "missing" for s in project.all_shots()),
        ),
    ]

    audio_len = probe_duration(Path(project.voiceover_path))
    video_len = probe_duration(Path(project.video_path))
    # Склейка и сведение обрезаются по короткой дорожке — расхождение должно быть в кадрах.
    checks.append(("длина видео совпала с озвучкой", abs(audio_len - video_len) < 0.5))

    print(f"\nозвучка {audio_len:.2f} с, видео {video_len:.2f} с")
    for label, ok in checks:
        print(f"{'PASS' if ok else 'FAIL'} {label}")
        failures += 0 if ok else 1

    shutil.rmtree(project_dir, ignore_errors=True)
    print(f"\n{'всё прошло' if not failures else f'{failures} проверок упало'}")
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
