"""Стадия 9: выгрузка на YouTube.

Всегда приватно — профиль канала задаёт privacy_status: private. Публикацию
делает человек, пайплайн только доводит ролик до готового черновика.
"""

from __future__ import annotations

from pathlib import Path

from coa.models import Project
from coa.providers.youtube import set_thumbnail, upload_video
from coa.stages import Context


def run(project: Project, ctx: Context) -> None:
    for field, stage in (
        ("video_path", "assemble"),
        ("chosen_title", "package"),
        ("description", "metadata"),
    ):
        if not getattr(project, field):
            raise RuntimeError(f"Не заполнено {field}. Сначала запусти стадию '{stage}'.")

    upload_rules = ctx.profile["upload"]

    if ctx.dry_run:
        print("  --dry-run: выгрузка пропущена. Было бы отправлено:")
        print(f"    заголовок: {project.chosen_title}")
        print(f"    приватность: {upload_rules['privacy_status']}")
        print(f"    теги: {', '.join(project.tags)}")
        return

    video_id = upload_video(
        config=ctx.config,
        video_path=Path(project.video_path),
        title=project.chosen_title,
        description=project.description,
        tags=project.tags,
        privacy_status=upload_rules["privacy_status"],
        category_id=str(upload_rules["category_id"]),
        made_for_kids=upload_rules["made_for_kids"],
    )
    project.video_id = video_id
    print(f"  загружено: https://studio.youtube.com/video/{video_id}/edit")

    if project.thumbnail_path and Path(project.thumbnail_path).exists():
        set_thumbnail(ctx.config, video_id, Path(project.thumbnail_path))
        print("  превью установлено")
