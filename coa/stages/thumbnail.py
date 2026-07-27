"""Стадия 7: превью.

Кадр берётся из самого «конфликтного» шота, а не из первого попавшегося: превью
должно обещать то же, что и заголовок.
"""

from __future__ import annotations

import re
from pathlib import Path

from coa.media import grab_frame, require_ffmpeg
from coa.models import Project
from coa.scoring import CONFLICT_MARKERS
from coa.stages import Context

FONT_CANDIDATES = [
    "/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf",
    "/usr/share/fonts/TTF/DejaVuSans-Bold.ttf",
    "/System/Library/Fonts/Supplemental/Arial Bold.ttf",
    "C:/Windows/Fonts/arialbd.ttf",
]


def _load_font(size: int):
    from PIL import ImageFont

    for path in FONT_CANDIDATES:
        if Path(path).exists():
            return ImageFont.truetype(path, size)
    return ImageFont.load_default()


def _overlay_text(concept: str, max_words: int) -> str:
    """Текст превью берётся из кавычек в концепте."""
    quoted = re.findall(r'"([^"]+)"', concept or "")
    if not quoted:
        return ""
    text = max(quoted, key=len)
    return " ".join(text.split()[:max_words]).upper()


def _pick_frame_time(project: Project) -> float:
    """Момент для кадра: середина сцены с самым сильным конфликтом в ключевых словах."""
    elapsed = 0.0
    best_time, best_score = 0.0, -1
    for shot in project.all_shots():
        keywords = {k.lower() for k in shot.keywords}
        score = len(keywords & CONFLICT_MARKERS)
        # Заглушки в кадр не берём — там чёрный экран.
        if shot.source == "missing":
            score = -1
        if score > best_score:
            best_score, best_time = score, elapsed + shot.duration_sec / 2
        elapsed += shot.duration_sec
    return best_time


def run(project: Project, ctx: Context) -> None:
    from PIL import Image, ImageDraw, ImageEnhance

    require_ffmpeg()
    if not project.video_path:
        raise RuntimeError("Нет видео. Сначала запусти стадию 'assemble'.")

    rules = ctx.profile["thumbnail"]
    width, height = rules["size"]

    frame_path = project.assets_dir / "thumb-frame.jpg"
    at = _pick_frame_time(project)
    grab_frame(Path(project.video_path), frame_path, at_sec=at)
    print(f"  кадр с {at:.1f} с")

    image = Image.open(frame_path).convert("RGB").resize((width, height), Image.LANCZOS)
    # Лёгкий подъём контраста и насыщенности — превью соревнуется в ленте.
    image = ImageEnhance.Contrast(image).enhance(1.25)
    image = ImageEnhance.Color(image).enhance(1.2)

    text = _overlay_text(project.thumbnail_concept or "", rules["max_words"])
    if text:
        draw = ImageDraw.Draw(image)
        font = _load_font(int(height * 0.16))
        box = draw.textbbox((0, 0), text, font=font, stroke_width=10)
        x = (width - (box[2] - box[0])) // 2
        y = int(height * 0.72) - (box[3] - box[1]) // 2
        draw.text(
            (x, y), text, font=font,
            fill=(255, 255, 255), stroke_width=10, stroke_fill=(0, 0, 0),
        )
        print(f"  текст: {text}")

    out_path = project.assets_dir / "thumbnail.jpg"
    # YouTube не принимает превью больше 2 МБ.
    for quality in (95, 88, 80, 70, 60):
        image.save(out_path, "JPEG", quality=quality)
        if out_path.stat().st_size <= 2 * 1024 * 1024:
            break

    project.thumbnail_path = str(out_path)
    print(f"  готово: {out_path} ({out_path.stat().st_size // 1024} КБ)")
