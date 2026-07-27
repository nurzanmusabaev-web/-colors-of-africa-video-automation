"""Стадия 6: рендер видеоряда и сведение с озвучкой."""

from __future__ import annotations

from pathlib import Path

from coa.media import concat, make_color_clip, mux, normalize_clip, require_ffmpeg
from coa.models import Project
from coa.stages import Context


def run(project: Project, ctx: Context) -> None:
    require_ffmpeg()

    if not project.voiceover_path:
        raise RuntimeError("Нет озвучки. Сначала запусти стадию 'voice'.")

    longform = ctx.profile["longform"]
    width, height = longform["resolution"]
    fps = longform["fps"]

    work_dir = project.assets_dir / "clips"
    normalized: list[Path] = []

    for shot in project.all_shots():
        if shot.duration_sec <= 0:
            raise RuntimeError(
                f"У сцены {shot.index} нулевая длительность — перезапусти 'voice'."
            )
        dst = work_dir / f"shot-{shot.index:03d}.mp4"

        if shot.clip_path and Path(shot.clip_path).exists():
            normalize_clip(
                Path(shot.clip_path),
                dst,
                duration=shot.duration_sec,
                width=width,
                height=height,
                fps=fps,
            )
        else:
            make_color_clip(
                dst, duration=shot.duration_sec, width=width, height=height, fps=fps
            )
        normalized.append(dst)
        print(f"  сцена {shot.index:3d} готова")

    silent = concat(normalized, project.assets_dir / "silent.mp4")
    final = mux(silent, Path(project.voiceover_path), project.assets_dir / "final.mp4")
    project.video_path = str(final)

    size_mb = final.stat().st_size / (1 << 20)
    print(f"  готово: {final} ({size_mb:.0f} МБ)")
