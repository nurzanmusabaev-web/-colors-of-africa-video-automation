"""Стадия 5: подбор футажа под каждую сцену.

Порядок источников: локальный архив → сток → заглушка. Заглушка не ломает рендер,
но попадает в отчёт, чтобы было видно, какие сцены надо доснять руками.
"""

from __future__ import annotations

from coa.models import Project
from coa.providers.footage import FootageLibrary, fetch_stock
from coa.stages import Context


def run(project: Project, ctx: Context) -> None:
    library = FootageLibrary(ctx.config.footage_dir)
    indexed = library.build()
    print(f"  архив: {indexed} клипов в {ctx.config.footage_dir}")

    stock_dir = project.assets_dir / "stock"
    used: set[str] = set()
    counts = {"archive": 0, "pexels": 0, "missing": 0}

    for shot in project.all_shots():
        match = library.find(shot.keywords, used=used)
        if match is None:
            match = fetch_stock(shot.keywords, stock_dir, ctx.config)

        if match is None:
            shot.clip_path = None
            shot.source = "missing"
            counts["missing"] += 1
            print(f"  сцена {shot.index:3d}: НЕ НАЙДЕНО — {', '.join(shot.keywords)}")
            continue

        shot.clip_path = match.path
        shot.source = match.source
        used.add(match.path)
        counts[match.source] += 1

    print(
        f"  архив: {counts['archive']}, сток: {counts['pexels']}, "
        f"пропусков: {counts['missing']}"
    )
    if counts["missing"]:
        print("  пропуски заполнятся чёрным кадром — досними или добавь PEXELS_API_KEY")
