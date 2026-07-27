"""Скоринг проверяется на реальных заголовках канала.

Смысл теста: заголовки, которые фактически провалились (сотни просмотров),
должны не проходить порог, а те, что фактически взлетели, — проходить.
"""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

import yaml  # noqa: E402

from coa.scoring import score_thumbnail_concept, score_title  # noqa: E402

PROFILE = yaml.safe_load(
    (Path(__file__).resolve().parent.parent / "channel" / "profile.yaml").read_text(
        encoding="utf-8"
    )
)
THRESHOLD = 70

# Реальные длинные видео канала и их фактические просмотры.
FAILED_TITLES = [
    ("Baobabs Trees That Remember Dinosaurs", 107),
    ("Coffee. How Africa Gave the World a Morning Ritual", 94),
    ("Seychelles Wildlife & Nature in the Most Beautiful Paradise on Earth", 224),
    ("Egypt Pyramids Africa Wildlife Documentary 4K", 27),
    ("Serengeti The Incredible Journey of Millions of Animals", 141),
]

# Формулировки в духе шортсов, которые фактически собрали миллионы.
STRONG_TITLES = [
    "Why This Lion Never Attacks a Buffalo Alone",
    "The Mistake That Cost This Hyena Everything",
    "How One Buffalo Survived an Entire Lion Pride",
]


def test_failed_titles_are_rejected() -> None:
    for title, views in FAILED_TITLES:
        breakdown = score_title(title, PROFILE)
        assert breakdown.total < THRESHOLD, (
            f"«{title}» набрал {breakdown.total}, но фактически собрал всего {views} просмотров"
        )


def test_strong_titles_pass() -> None:
    for title in STRONG_TITLES:
        breakdown = score_title(title, PROFILE)
        assert breakdown.total >= THRESHOLD, f"«{title}» набрал только {breakdown.total}"


def test_banned_word_costs_points() -> None:
    clean = score_title("Why This Lion Never Attacks a Buffalo Alone", PROFILE)
    dirty = score_title("Why This Lion Never Attacks a Buffalo Alone 4K", PROFILE)
    assert dirty.total < clean.total


def test_all_caps_is_penalised() -> None:
    normal = score_title("Why This Lion Never Attacks a Buffalo Alone", PROFILE)
    caps = score_title("WHY THIS LION NEVER ATTACKS A BUFFALO ALONE", PROFILE)
    assert caps.total < normal.total


def test_overlong_title_loses_points() -> None:
    short = score_title("Why This Lion Never Attacks a Buffalo Alone", PROFILE)
    long = score_title(
        "Why This Lion Never Attacks a Buffalo Alone And What Happens "
        "When He Finally Decides To Try It Anyway",
        PROFILE,
    )
    assert long.total < short.total


def test_thumbnail_concept_scoring() -> None:
    good = score_thumbnail_concept(
        'Close-up of a lion\'s bloodied jaws, backlit dust, text "ONE MISTAKE"', PROFILE
    )
    bad = score_thumbnail_concept(
        'Wide shot of a savanna at sunset, text "The incredible story of the lion pride"',
        PROFILE,
    )
    assert good.total >= THRESHOLD
    assert bad.total < THRESHOLD


if __name__ == "__main__":
    passed = failed = 0
    for name, func in sorted(globals().items()):
        if not name.startswith("test_") or not callable(func):
            continue
        try:
            func()
            print(f"PASS {name}")
            passed += 1
        except AssertionError as error:
            print(f"FAIL {name}: {error}")
            failed += 1
    print(f"\n{passed} прошло, {failed} упало")
    raise SystemExit(1 if failed else 0)
