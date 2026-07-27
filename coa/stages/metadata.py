"""Стадия 8: описание, теги, тайм-коды."""

from __future__ import annotations

from coa.models import Project
from coa.stages import Context

SYSTEM = """Ты пишешь описание для YouTube-ролика о хищниках Африки.

Первые две строки описания видны без раскрытия — в них должен быть тот же
конфликт, что и в заголовке, и причина досмотреть. Дальше — 3-5 предложений по
существу ролика.

Теги: 12-15 штук, английские, от конкретных к общим. Без решёток."""

SCHEMA = {
    "type": "object",
    "properties": {
        "description": {"type": "string", "description": "Тело описания без тайм-кодов"},
        "tags": {"type": "array", "items": {"type": "string"}},
    },
    "required": ["description", "tags"],
    "additionalProperties": False,
}


def _timestamp(seconds: float) -> str:
    total = int(seconds)
    hours, remainder = divmod(total, 3600)
    minutes, secs = divmod(remainder, 60)
    if hours:
        return f"{hours}:{minutes:02d}:{secs:02d}"
    return f"{minutes}:{secs:02d}"


def run(project: Project, ctx: Context) -> None:
    outline = "\n".join(f"- {segment.heading}" for segment in project.segments)
    prompt = f"""Заголовок: {project.chosen_title}
Угол подачи: {project.angle}
Посыл: {project.premise}

Блоки видео:
{outline}

Напиши описание и теги."""

    result = ctx.llm.json(system=SYSTEM, prompt=prompt, schema=SCHEMA, effort="medium")

    # Тайм-коды считаются из фактических длительностей сцен, не из оценок модели.
    chapters = []
    elapsed = 0.0
    for segment in project.segments:
        chapters.append({"time": _timestamp(elapsed), "heading": segment.heading})
        elapsed += sum(shot.duration_sec for shot in segment.shots)

    # YouTube включает главы только если первая метка — 0:00.
    if chapters:
        chapters[0]["time"] = "0:00"

    chapter_block = "\n".join(f"{c['time']} {c['heading']}" for c in chapters)
    project.chapters = chapters
    project.description = f"{result['description']}\n\n{chapter_block}"

    default_tags = ctx.profile["upload"]["default_tags"]
    seen, tags = set(), []
    for tag in [*result["tags"], *default_tags]:
        key = tag.lower().strip()
        if key and key not in seen:
            seen.add(key)
            tags.append(tag.strip())
    project.tags = tags[:15]

    print(f"  глав: {len(chapters)}, тегов: {len(project.tags)}")
    print(f"  первые 2 строки описания:\n    " + "\n    ".join(
        project.description.splitlines()[:2]
    ))
