"""Стадия 4: озвучка.

Каждая сцена озвучивается отдельным файлом. Это нужно не ради качества, а ради
таймлайна: длительность сцены определяется длиной её начитки, и подбор футажа на
следующей стадии режет клипы ровно под неё.
"""

from __future__ import annotations

from coa.media import concat_audio, probe_duration, require_ffmpeg
from coa.models import Project
from coa.providers.tts import synthesize
from coa.stages import Context


def run(project: Project, ctx: Context) -> None:
    require_ffmpeg()
    shots = project.all_shots()
    if not shots:
        raise RuntimeError("Нет сцен. Сначала запусти стадию 'script'.")

    voice_dir = project.assets_dir / "voice"
    voice_dir.mkdir(parents=True, exist_ok=True)

    tracks = []
    for shot in shots:
        track = synthesize(shot.narration, voice_dir / f"shot-{shot.index:03d}", ctx.config)
        shot.duration_sec = round(probe_duration(track), 3)
        tracks.append(track)
        print(f"  сцена {shot.index:3d}: {shot.duration_sec:6.2f} с")

    full = concat_audio(tracks, project.assets_dir / "voiceover.wav")
    project.voiceover_path = str(full)

    total = sum(shot.duration_sec for shot in shots)
    longform = ctx.profile["longform"]
    print(f"  итого: {total / 60:.1f} мин")

    if total < longform["min_duration_sec"]:
        print(
            f"  ВНИМАНИЕ: короче минимума {longform['min_duration_sec'] // 60} мин — "
            "перезапусти 'script' с более подробным сценарием"
        )
    elif total > longform["max_duration_sec"]:
        print(f"  ВНИМАНИЕ: длиннее максимума {longform['max_duration_sec'] // 60} мин")
