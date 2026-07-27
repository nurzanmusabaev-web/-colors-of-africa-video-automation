"""Стадия 10: разбор после публикации.

Замыкает цикл: находит момент, где зритель уходит, и переводит его обратно в
номер сцены сценария — чтобы в следующем ролике не повторить ту же ошибку.
"""

from __future__ import annotations

from datetime import date, timedelta

from coa.models import Project
from coa.providers.youtube import retention, traffic_sources, video_stats
from coa.stages import Context


def _shot_at(project: Project, ratio: float) -> str:
    """Переводит долю таймлайна в конкретную сцену сценария."""
    total = sum(shot.duration_sec for shot in project.all_shots())
    if total <= 0:
        return "неизвестно"
    target = total * ratio
    elapsed = 0.0
    for segment in project.segments:
        for shot in segment.shots:
            elapsed += shot.duration_sec
            if elapsed >= target:
                snippet = shot.narration[:70].strip()
                return f'блок «{segment.heading}», сцена {shot.index}: "{snippet}..."'
    return "конец ролика"


def run(project: Project, ctx: Context) -> None:
    if not project.video_id:
        raise RuntimeError("Нет video_id. Сначала запусти стадию 'upload'.")

    end = date.today()
    start = end - timedelta(days=28)
    fmt = "%Y-%m-%d"

    stats = video_stats(ctx.config, project.video_id)["statistics"]
    views = int(stats.get("viewCount", 0))
    print(f"  просмотров: {views}, лайков: {stats.get('likeCount', 0)}")

    if views < 50:
        print("  данных мало для разбора удержания — вернись через несколько дней")
        return

    traffic = traffic_sources(ctx.config, project.video_id, start.strftime(fmt), end.strftime(fmt))
    print("  источники трафика:")
    for row in sorted(traffic.get("rows", []), key=lambda r: -r[1])[:5]:
        print(f"    {row[0]:<24} {row[1]:>7} просмотров, средний просмотр {row[3]} с")

    curve = retention(ctx.config, project.video_id, start.strftime(fmt), end.strftime(fmt))
    rows = curve.get("rows") or []
    if not rows:
        print("  кривая удержания недоступна")
        return

    rows.sort(key=lambda r: r[0])
    first_30s_ratio = 30 / max(1.0, sum(s.duration_sec for s in project.all_shots()))
    intro = next((r[1] for r in rows if r[0] >= first_30s_ratio), rows[0][1])
    print(f"  удержание на 30-й секунде: {intro * 100:.0f}%")

    # Самое резкое падение между соседними точками — это и есть место, где теряют.
    worst_drop, worst_at = 0.0, 0.0
    for previous, current in zip(rows, rows[1:]):
        drop = previous[1] - current[1]
        if drop > worst_drop:
            worst_drop, worst_at = drop, current[0]

    print(f"  самый резкий отток на {worst_at * 100:.0f}% таймлайна (-{worst_drop * 100:.0f} п.п.)")
    print(f"    здесь: {_shot_at(project, worst_at)}")

    if intro < 0.5:
        print("  ВЫВОД: проблема в открывашке — заголовок и превью обещают не то, что в первые 30 с")
    elif worst_drop > 0.1:
        print("  ВЫВОД: провал в середине — в этом блоке нет открытого вопроса, добавь недосказанность")
    else:
        print("  ВЫВОД: удержание ровное — можно масштабировать этот формат")
