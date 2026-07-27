"""Стадия 2: упаковка. Главный гейт пайплайна.

Именно здесь ломались длинные видео канала, поэтому стадия устроена как цикл
«сгенерируй → оцени → перегенерируй с разбором». Проект не идёт дальше, пока
упаковка не наберёт COA_MIN_PACKAGING_SCORE.
"""

from __future__ import annotations

from coa.models import Project, TitleCandidate
from coa.scoring import score_thumbnail_concept, score_title
from coa.stages import Context

MAX_ATTEMPTS = 3

SYSTEM = """Ты пишешь заголовки и концепты превью для YouTube-канала о хищниках Африки.

Заголовок обязан содержать:
- конкретный вид животного английским названием;
- конфликт или ставку (VS, attack, survive, mistake, escape...);
- интригу — обещание ответа, который зритель получит только в видео.

Заголовок не должен содержать: хэштегов, капса целиком, слов
documentary / 4K / relaxing / compilation / beautiful.

Концепт превью описывает ОДИН кадр: крупный план морды или зубов, контрастная
сцена, максимум 3 слова текста в кавычках."""

SCHEMA = {
    "type": "object",
    "properties": {
        "titles": {
            "type": "array",
            "items": {"type": "string"},
            "description": "8 вариантов заголовка, каждый до 70 символов",
        },
        "thumbnail_concept": {
            "type": "string",
            "description": "Описание одного кадра превью. Текст на превью — в двойных кавычках.",
        },
    },
    "required": ["titles", "thumbnail_concept"],
    "additionalProperties": False,
}


def run(project: Project, ctx: Context) -> None:
    profile = ctx.profile
    threshold = ctx.config.min_packaging_score
    feedback = ""

    for attempt in range(1, MAX_ATTEMPTS + 1):
        prompt = f"""Угол подачи: {project.angle}
Посыл: {project.premise}

Виды, которые работают на канале: {', '.join(profile['core_species'])}
{feedback}
Дай 8 заголовков и один концепт превью."""

        result = ctx.llm.json(system=SYSTEM, prompt=prompt, schema=SCHEMA, effort="high")

        candidates = []
        for text in result["titles"]:
            breakdown = score_title(text, profile)
            candidates.append(
                TitleCandidate(text=text, score=breakdown.total, reasons=breakdown.reasons)
            )
        candidates.sort(key=lambda c: c.score, reverse=True)

        thumb = score_thumbnail_concept(result["thumbnail_concept"], profile)
        # Заголовок весит вдвое больше превью: он влияет и на поиск, и на клик.
        packaging = round((candidates[0].score * 2 + thumb.total) / 3)

        project.titles = candidates
        project.chosen_title = candidates[0].text
        project.thumbnail_concept = result["thumbnail_concept"]
        project.packaging_score = packaging

        print(f"  попытка {attempt}: упаковка {packaging}/100 (порог {threshold})")
        for candidate in candidates[:3]:
            print(f"    {candidate.score:3d}  {candidate.text}")

        if packaging >= threshold:
            print(f"  выбран: {project.chosen_title}")
            for reason in candidates[0].reasons:
                print(f"    {reason}")
            return

        # Скармливаем модели ровно те причины, по которым скоринг снял баллы.
        weak = "\n".join(
            f"- «{c.text}» — {c.score}/100: "
            + "; ".join(r for r in c.reasons if r.startswith(("+0", "-")))
            for c in candidates[:3]
        )
        feedback = f"""
Предыдущая попытка не прошла порог. Разбор:
{weak}
Концепт превью набрал {thumb.total}/100: {'; '.join(r for r in thumb.reasons if r.startswith('+0'))}

Исправь ровно эти недостатки.
"""

    raise RuntimeError(
        f"Упаковка не набрала {threshold} за {MAX_ATTEMPTS} попытки "
        f"(лучший результат {project.packaging_score}). "
        "Переформулируй тему или снизь COA_MIN_PACKAGING_SCORE."
    )
