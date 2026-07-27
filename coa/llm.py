"""Обёртка над Anthropic API. Единственное место, где пайплайн ходит в LLM."""

from __future__ import annotations

import json
from typing import Any

from coa.config import Config


class LLMError(RuntimeError):
    pass


class LLM:
    def __init__(self, config: Config) -> None:
        if not config.anthropic_api_key:
            raise LLMError(
                "ANTHROPIC_API_KEY не задан. Скопируй .env.example в .env и заполни ключ."
            )
        import anthropic

        self._client = anthropic.Anthropic(api_key=config.anthropic_api_key)
        self._model = config.llm_model

    def json(
        self,
        *,
        system: str,
        prompt: str,
        schema: dict[str, Any],
        effort: str = "high",
        max_tokens: int = 16000,
    ) -> dict[str, Any]:
        """Запрос со structured output. Возвращает разобранный JSON по схеме."""
        with self._client.messages.stream(
            model=self._model,
            max_tokens=max_tokens,
            system=system,
            output_config={
                "effort": effort,
                "format": {"type": "json_schema", "schema": schema},
            },
            messages=[{"role": "user", "content": prompt}],
        ) as stream:
            response = stream.get_final_message()

        if response.stop_reason == "refusal":
            raise LLMError(f"Модель отклонила запрос: {response.stop_details}")

        text = next((b.text for b in response.content if b.type == "text"), None)
        if not text:
            raise LLMError("Пустой ответ модели")
        return json.loads(text)
