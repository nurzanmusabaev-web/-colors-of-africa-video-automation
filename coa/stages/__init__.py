"""Реестр стадий пайплайна.

Стадия — чистая функция (Project, Context) -> None, которая пишет результат
обратно в Project. Стадии идемпотентны: повторный запуск перезаписывает свой
кусок состояния и не трогает чужой.
"""

from __future__ import annotations

from dataclasses import dataclass
from typing import Callable

from coa.config import Config
from coa.llm import LLM
from coa.models import Project


class Context:
    """Общие ресурсы стадий. LLM создаётся лениво — стадиям монтажа он не нужен."""

    def __init__(self, config: Config, *, dry_run: bool = False) -> None:
        self.config = config
        self.dry_run = dry_run
        self._llm: LLM | None = None

    @property
    def llm(self) -> LLM:
        if self._llm is None:
            self._llm = LLM(self.config)
        return self._llm

    @property
    def profile(self) -> dict:
        return self.config.profile


@dataclass(frozen=True)
class Stage:
    name: str
    run: Callable[[Project, Context], None]
    description: str
    # Гейт: после этой стадии пайплайн останавливается и ждёт `coa approve`.
    gate: bool = False


def _build_registry() -> list[Stage]:
    from coa.stages import (
        assemble,
        broll,
        ideate,
        metadata,
        package,
        review,
        script,
        thumbnail,
        upload,
        voice,
    )

    return [
        Stage("ideate", ideate.run, "Тема → угол подачи и посыл"),
        Stage("package", package.run, "Заголовки + превью-концепт + скоринг", gate=True),
        Stage("script", script.run, "Сценарий по блокам с ключевыми словами под футаж"),
        Stage("voice", voice.run, "Озвучка"),
        Stage("broll", broll.run, "Подбор футажа под каждую сцену"),
        Stage("assemble", assemble.run, "Рендер видеоряда и сведение с озвучкой"),
        Stage("thumbnail", thumbnail.run, "Генерация превью"),
        Stage("metadata", metadata.run, "Описание, теги, тайм-коды", gate=True),
        Stage("upload", upload.run, "Выгрузка на YouTube (приватно)"),
        Stage("review", review.run, "Разбор аналитики после публикации"),
    ]


REGISTRY: list[Stage] = _build_registry()
STAGE_NAMES: list[str] = [stage.name for stage in REGISTRY]


def get_stage(name: str) -> Stage:
    for stage in REGISTRY:
        if stage.name == name:
            return stage
    raise KeyError(f"Неизвестная стадия '{name}'. Доступны: {', '.join(STAGE_NAMES)}")
