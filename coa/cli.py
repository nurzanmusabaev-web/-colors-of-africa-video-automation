"""CLI пайплайна. `python -m coa.cli --help`"""

from __future__ import annotations

import argparse
import sys
import traceback

from coa.config import PROJECTS_DIR, load_config
from coa.models import Project, slugify
from coa.stages import REGISTRY, STAGE_NAMES, Context, get_stage


def _print_header(text: str) -> None:
    print(f"\n=== {text} ===")


def cmd_new(args: argparse.Namespace) -> int:
    slug = args.slug or slugify(args.topic)
    project_dir = PROJECTS_DIR / slug
    if project_dir.exists() and not args.force:
        print(f"Проект '{slug}' уже существует. Используй --force для перезаписи.")
        return 1
    project = Project(slug=slug, topic=args.topic)
    project.save()
    print(f"Создан проект: {project.dir}")
    print(f"Дальше: python -m coa.cli run {slug}")
    return 0


def cmd_list(_: argparse.Namespace) -> int:
    if not PROJECTS_DIR.exists():
        print("Проектов пока нет.")
        return 0
    rows = []
    for path in sorted(PROJECTS_DIR.iterdir()):
        if not (path / "project.json").exists():
            continue
        project = Project.load(path.name)
        done = len(project.completed_stages)
        rows.append((project.slug, f"{done}/{len(REGISTRY)}", project.chosen_title or project.topic))
    if not rows:
        print("Проектов пока нет.")
        return 0
    width = max(len(r[0]) for r in rows)
    for slug, progress, title in rows:
        print(f"{slug:<{width}}  {progress:>5}  {title}")
    return 0


def cmd_stages(_: argparse.Namespace) -> int:
    for i, stage in enumerate(REGISTRY, start=1):
        gate = "  [гейт: нужно approve]" if stage.gate else ""
        print(f"{i:2d}. {stage.name:<10} {stage.description}{gate}")
    return 0


def cmd_status(args: argparse.Namespace) -> int:
    project = Project.load(args.slug)
    print(f"Проект:   {project.slug}")
    print(f"Тема:     {project.topic}")
    if project.chosen_title:
        print(f"Заголовок: {project.chosen_title}  (упаковка {project.packaging_score}/100)")
    if project.video_id:
        print(f"YouTube:  https://studio.youtube.com/video/{project.video_id}/edit")
    print()
    for stage in REGISTRY:
        done = stage.name in project.completed_stages
        mark = "[x]" if done else "[ ]"
        gate = ""
        if stage.gate and done:
            gate = " (одобрено)" if stage.name in project.approvals else " (ЖДЁТ approve)"
        elif stage.gate:
            gate = " (гейт)"
        print(f" {mark} {stage.name}{gate}")
    return 0


def cmd_approve(args: argparse.Namespace) -> int:
    project = Project.load(args.slug)
    stage = get_stage(args.stage)
    if not stage.gate:
        print(f"У стадии '{stage.name}' нет гейта — одобрять нечего.")
        return 1
    if stage.name not in project.completed_stages:
        print(f"Стадия '{stage.name}' ещё не выполнена.")
        return 1
    if stage.name not in project.approvals:
        project.approvals.append(stage.name)
        project.save()
    print(f"Стадия '{stage.name}' одобрена. Продолжить: python -m coa.cli run {args.slug}")
    return 0


def cmd_score(args: argparse.Namespace) -> int:
    """Прогон заголовка через скоринг без создания проекта."""
    from coa.scoring import score_title

    config = load_config()
    breakdown = score_title(args.title, config.profile)
    print(f"{breakdown.total}/100  {args.title}")
    for reason in breakdown.reasons:
        print(f"  {reason}")
    return 0 if breakdown.passes(config.min_packaging_score) else 1


def cmd_run(args: argparse.Namespace) -> int:
    config = load_config()
    project = Project.load(args.slug)
    ctx = Context(config, dry_run=args.dry_run)

    start = STAGE_NAMES.index(args.from_stage) if args.from_stage else 0
    end = STAGE_NAMES.index(args.until) + 1 if args.until else len(REGISTRY)

    for stage in REGISTRY[start:end]:
        if stage.name in project.completed_stages and not args.force:
            print(f"[пропуск] {stage.name} — уже выполнена (--force для перезапуска)")
            continue

        _print_header(f"{stage.name}: {stage.description}")
        try:
            stage.run(project, ctx)
        except Exception as error:  # noqa: BLE001 — состояние надо сохранить в любом случае
            project.save()
            print(f"\nОШИБКА на стадии '{stage.name}': {error}", file=sys.stderr)
            if args.traceback:
                traceback.print_exc()
            print(f"Прогресс сохранён. Продолжить: python -m coa.cli run {args.slug}")
            return 1

        if stage.name not in project.completed_stages:
            project.completed_stages.append(stage.name)
        project.save()

        if stage.gate:
            if args.yes:
                if stage.name not in project.approvals:
                    project.approvals.append(stage.name)
                project.save()
            elif stage.name not in project.approvals:
                print(f"\nГЕЙТ: проверь результат стадии '{stage.name}'.")
                print(f"  посмотреть: python -m coa.cli status {args.slug}")
                print(f"  одобрить:   python -m coa.cli approve {args.slug} {stage.name}")
                return 0

    print("\nГотово.")
    return 0


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        prog="coa", description="Пайплайн длинных видео для канала Colors of Africa"
    )
    sub = parser.add_subparsers(dest="command", required=True)

    p_new = sub.add_parser("new", help="создать проект из темы")
    p_new.add_argument("topic")
    p_new.add_argument("--slug", help="явный идентификатор проекта")
    p_new.add_argument("--force", action="store_true")
    p_new.set_defaults(func=cmd_new)

    p_run = sub.add_parser("run", help="прогнать проект по стадиям")
    p_run.add_argument("slug")
    p_run.add_argument("--from", dest="from_stage", choices=STAGE_NAMES)
    p_run.add_argument("--until", choices=STAGE_NAMES)
    p_run.add_argument("--force", action="store_true", help="перезапустить уже выполненные стадии")
    p_run.add_argument("--yes", action="store_true", help="автоматически проходить гейты")
    p_run.add_argument("--dry-run", action="store_true", help="не выгружать на YouTube")
    p_run.add_argument("--traceback", action="store_true")
    p_run.set_defaults(func=cmd_run)

    p_status = sub.add_parser("status", help="состояние проекта")
    p_status.add_argument("slug")
    p_status.set_defaults(func=cmd_status)

    p_approve = sub.add_parser("approve", help="одобрить стадию с гейтом")
    p_approve.add_argument("slug")
    p_approve.add_argument("stage", choices=[s.name for s in REGISTRY if s.gate])
    p_approve.set_defaults(func=cmd_approve)

    p_score = sub.add_parser("score", help="оценить заголовок без создания проекта")
    p_score.add_argument("title")
    p_score.set_defaults(func=cmd_score)

    sub.add_parser("list", help="список проектов").set_defaults(func=cmd_list)
    sub.add_parser("stages", help="список стадий").set_defaults(func=cmd_stages)

    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    return args.func(args)


if __name__ == "__main__":
    raise SystemExit(main())
