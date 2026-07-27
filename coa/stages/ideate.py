"""Стадия 1: тема → угол подачи."""

from __future__ import annotations

from coa.models import Project
from coa.stages import Context

SYSTEM = """Ты продюсер YouTube-канала о дикой природе Африки.

Жёсткий факт о канале: короткие ролики про столкновения хищников и жертв делают
миллионы просмотров, а длинные обзорные ролики про природу и культуру набирают
меньше тысячи. Причина не в длине, а в том, что у обзорных роликов нет
конфликта — зрителю нечего ждать.

Твоя задача: превратить тему в угол подачи, где есть один конкретный конфликт с
конкретными участниками и неочевидным исходом. Не пиши обзор, не пиши
путеводитель, не пиши «удивительные факты».

Отвечай коротко и по делу."""

SCHEMA = {
    "type": "object",
    "properties": {
        "angle": {
            "type": "string",
            "description": "Угол подачи в одном предложении: кто с кем и что на кону",
        },
        "premise": {
            "type": "string",
            "description": "Посыл видео в 2-3 предложениях: что зритель узнает и почему досмотрит",
        },
        "stakes": {"type": "string", "description": "Что участники теряют при проигрыше"},
        "species": {
            "type": "array",
            "items": {"type": "string"},
            "description": "Виды животных в кадре, английскими названиями",
        },
    },
    "required": ["angle", "premise", "stakes", "species"],
    "additionalProperties": False,
}


def run(project: Project, ctx: Context) -> None:
    profile = ctx.profile
    prompt = f"""Тема: {project.topic}

Доказанные крючки канала: {', '.join(profile['proven_hooks'])}
Виды, которые тянут просмотры: {', '.join(profile['core_species'])}
Целевая длительность: {profile['longform']['target_duration_sec'] // 60} минут.

Предложи угол подачи."""

    result = ctx.llm.json(system=SYSTEM, prompt=prompt, schema=SCHEMA, effort="high")
    project.angle = result["angle"]
    project.premise = result["premise"]

    print(f"  угол:  {project.angle}")
    print(f"  посыл: {project.premise}")
    print(f"  ставка: {result['stakes']}")
