"""Детерминированный скоринг упаковки.

Правила выведены из фактических данных канала: шортсы с конфликтом в заголовке
делали миллионы, а длинные с описательными заголовками ("Baobabs Trees That
Remember Dinosaurs", "Coffee. How Africa Gave the World a Morning Ritual") —
сотни просмотров. Скоринг наказывает именно за описательность.

Скоринг намеренно не использует LLM: гейт должен быть воспроизводимым и
объяснимым, иначе одно и то же название проходит сегодня и не проходит завтра.
"""

from __future__ import annotations

import re
from dataclasses import dataclass
from typing import Any

# Слова, обозначающие противостояние или ставку. Именно они делали заголовки шортсов.
CONFLICT_MARKERS = {
    "vs", "versus", "against", "attack", "attacks", "attacked", "hunt", "hunts",
    "kill", "kills", "fight", "fights", "battle", "clash", "ambush", "revenge",
    "survive", "survives", "survival", "escape", "escapes", "steal", "steals",
    "defend", "defends", "protect", "protects", "mistake", "trapped", "cornered",
    "outsmart", "outsmarts", "showdown", "war", "hunted", "prey", "takedown",
}

# Слова, создающие интригу — обещание, что ответ внутри видео.
CURIOSITY_MARKERS = {
    "why", "how", "what", "never", "nobody", "everyone", "until", "before",
    "after", "moment", "secret", "wrong", "actually", "truth", "really",
}


@dataclass
class ScoreBreakdown:
    total: int
    reasons: list[str]

    def passes(self, threshold: int) -> bool:
        return self.total >= threshold


def _words(title: str) -> list[str]:
    return re.findall(r"[a-z']+", title.lower())


def score_title(title: str, profile: dict[str, Any]) -> ScoreBreakdown:
    """Оценивает заголовок от 0 до 100 по правилам из channel/profile.yaml."""
    rules = profile["title_rules"]
    species = {s.lower() for s in profile["core_species"]}
    words = set(_words(title))
    reasons: list[str] = []
    score = 0

    # --- Длина: 20 баллов ---
    length = len(title)
    if rules["min_chars"] <= length <= rules["max_chars"]:
        score += 20
        reasons.append(f"+20 длина {length} символов в целевом диапазоне")
    elif length > rules["max_chars"]:
        over = length - rules["max_chars"]
        penalty = min(20, over)
        score += 20 - penalty
        reasons.append(f"+{20 - penalty} заголовок длиннее {rules['max_chars']}, обрежется в поиске")
    else:
        score += 10
        reasons.append(f"+10 заголовок короче {rules['min_chars']} символов, мало зацепок")

    # --- Животное в заголовке: 20 баллов ---
    found_species = sorted(words & species)
    if found_species:
        score += 20
        reasons.append(f"+20 конкретный вид в заголовке: {', '.join(found_species)}")
    elif rules["require_species"]:
        reasons.append("+0 нет ни одного вида из core_species — зритель не понимает, на кого смотрит")

    # --- Конфликт: 25 баллов ---
    found_conflict = sorted(words & CONFLICT_MARKERS)
    if found_conflict:
        score += 25
        reasons.append(f"+25 есть конфликт/ставка: {', '.join(found_conflict)}")
    elif rules["require_conflict"]:
        reasons.append("+0 нет конфликта — это описательный заголовок, ровно такие и не взлетели")

    # --- Запрещённые слова: 15 баллов ---
    lowered = title.lower()
    hit_banned = [w for w in rules["banned_words"] if w.lower() in lowered]
    if hit_banned:
        reasons.append(f"+0 запрещённые слова: {', '.join(hit_banned)}")
    else:
        score += 15
        reasons.append("+15 нет слов из чёрного списка")

    # --- Формат: 10 баллов ---
    format_score = 10
    format_problems: list[str] = []
    if rules["forbid_hashtags"] and "#" in title:
        format_score -= 5
        format_problems.append("хэштеги в заголовке длинного видео")
    letters = [c for c in title if c.isalpha()]
    if rules["forbid_all_caps"] and letters and all(c.isupper() for c in letters):
        format_score -= 5
        format_problems.append("заголовок целиком капсом")
    score += format_score
    if format_problems:
        reasons.append(f"+{format_score} формат: " + "; ".join(format_problems))
    else:
        reasons.append("+10 формат чистый")

    # --- Интрига: 10 баллов ---
    if words & CURIOSITY_MARKERS:
        score += 10
        reasons.append("+10 есть интрига — заголовок обещает ответ внутри видео")
    else:
        reasons.append("+0 нет интриги, заголовок сообщает всё сразу")

    return ScoreBreakdown(total=max(0, min(100, score)), reasons=reasons)


def score_thumbnail_concept(concept: str, profile: dict[str, Any]) -> ScoreBreakdown:
    """Грубая проверка описания превью: один субъект, мало текста, высокий контраст."""
    rules = profile["thumbnail"]
    reasons: list[str] = []
    score = 0

    overlay = re.findall(r'"([^"]+)"', concept)
    overlay_words = sum(len(t.split()) for t in overlay)
    if overlay and overlay_words <= rules["max_words"]:
        score += 40
        reasons.append(f"+40 текст на превью — {overlay_words} слов(а)")
    elif overlay:
        reasons.append(f"+0 текста на превью слишком много: {overlay_words} слов")
    else:
        score += 20
        reasons.append("+20 превью без текста — читается, но теряет обещание")

    lowered = concept.lower()
    if any(k in lowered for k in ("close-up", "closeup", "face", "eyes", "teeth", "jaws")):
        score += 35
        reasons.append("+35 крупный план морды/зубов — работает в ленте")
    else:
        reasons.append("+0 нет крупного плана, в маленьком размере превью не прочитается")

    if any(k in lowered for k in ("contrast", "backlit", "silhouette", "dust", "blood")):
        score += 25
        reasons.append("+25 контрастная сцена")
    else:
        reasons.append("+0 не описан контраст")

    return ScoreBreakdown(total=max(0, min(100, score)), reasons=reasons)
