#!/usr/bin/env bash
# Скачивает все 123 кадра и называет их по таймкоду: 0_00.png, 0_07.png ... 14_14.png
# Запуск:  bash download-by-timecode.sh [папка]
set -euo pipefail
cd "$(dirname "$0")"
DEST="${1:-lioness-frames}"
mkdir -p "$DEST"
total=$(wc -l < timecodes.tsv)
i=0
while IFS=$'\t' read -r name url; do
  i=$((i+1))
  out="$DEST/$name.png"
  if [ -s "$out" ]; then echo "[$i/$total] $name.png уже есть"; continue; fi
  curl -fL --retry 4 --retry-delay 2 --retry-all-errors -sS "$url" -o "$out"
  echo "[$i/$total] $name.png"
done < timecodes.tsv
echo "Готово: $(ls -1 "$DEST" | wc -l) файлов в $DEST/"
