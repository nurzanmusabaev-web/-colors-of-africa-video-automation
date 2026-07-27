"""Стадия 3: сценарий, разбитый на блоки и сцены."""

from __future__ import annotations

from coa.models import Project, Segment, Shot
from coa.stages import Context

SYSTEM = """Ты пишешь дикторский текст для документального ролика о хищниках Африки.

Структура жёсткая:
1. Холодная открывашка (hook) — до 30 секунд, сразу в момент максимального
   напряжения. Никаких приветствий, никакого «в этом видео мы узнаем».
2. Блоки по 1.5-2.5 минуты. Каждый блок ЗАКАНЧИВАЕТСЯ открытым вопросом или
   недосказанностью, из-за которой зритель не уходит.

Каждая сцена (shot) — это 8-20 секунд текста плюс ключевые слова для подбора
футажа. Ключевые слова: английские, конкретные, по 2-4 штуки — вид животного,
действие, окружение. Например ["lion", "charge", "dust"].

Пиши на английском. Простыми предложениями, под начитку вслух.
Никаких обращений к камере, никаких призывов подписаться внутри текста."""

SCHEMA = {
    "type": "object",
    "properties": {
        "hook": {"type": "string", "description": "Текст холодной открывашки"},
        "hook_keywords": {"type": "array", "items": {"type": "string"}},
        "segments": {
            "type": "array",
            "items": {
                "type": "object",
                "properties": {
                    "heading": {"type": "string", "description": "Название блока для тайм-кодов"},
                    "shots": {
                        "type": "array",
                        "items": {
                            "type": "object",
                            "properties": {
                                "narration": {"type": "string"},
                                "keywords": {"type": "array", "items": {"type": "string"}},
                            },
                            "required": ["narration", "keywords"],
                            "additionalProperties": False,
                        },
                    },
                },
                "required": ["heading", "shots"],
                "additionalProperties": False,
            },
        },
    },
    "required": ["hook", "hook_keywords", "segments"],
    "additionalProperties": False,
}


def run(project: Project, ctx: Context) -> None:
    longform = ctx.profile["longform"]
    target_min = longform["target_duration_sec"] // 60

    prompt = f"""Заголовок видео: {project.chosen_title}
Угол подачи: {project.angle}
Посыл: {project.premise}

Нужно {longform['segments']} блоков, общая длительность около {target_min} минут
при скорости начитки 150 слов в минуту — это примерно
{longform['target_duration_sec'] // 60 * 150} слов всего.

Холодная открывашка — не длиннее {longform['cold_open_sec']} секунд
(примерно {longform['cold_open_sec'] * 150 // 60} слов).

Напиши сценарий."""

    result = ctx.llm.json(system=SYSTEM, prompt=prompt, schema=SCHEMA, effort="high")

    project.hook = result["hook"]
    project.segments = []

    # Открывашка — нулевой блок, чтобы она попала в общий таймлайн и в тайм-коды.
    shot_index = 0
    cold_open = Segment(index=0, heading="Cold open", shots=[])
    cold_open.shots.append(
        Shot(index=shot_index, narration=result["hook"], keywords=result["hook_keywords"])
    )
    shot_index += 1
    project.segments.append(cold_open)

    for i, raw_segment in enumerate(result["segments"], start=1):
        segment = Segment(index=i, heading=raw_segment["heading"], shots=[])
        for raw_shot in raw_segment["shots"]:
            segment.shots.append(
                Shot(
                    index=shot_index,
                    narration=raw_shot["narration"],
                    keywords=raw_shot["keywords"],
                )
            )
            shot_index += 1
        project.segments.append(segment)

    words = sum(len(s.narration.split()) for s in project.all_shots())
    print(f"  блоков: {len(project.segments)}, сцен: {shot_index}")
    print(f"  слов: {words} (~{words / 150:.1f} мин начитки)")
