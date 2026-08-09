#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p secretary-frames
i=0; while IFS=$'\t' read -r n u; do i=$((i+1))
  out="secretary-frames/$n.png"
  [ -s "$out" ] && { echo "[$i/86] $n.png уже есть"; continue; }
  curl -fL --retry 4 --connect-timeout 20 --max-time 600 -# -o "$out" "$u"; echo "[$i/86] $n.png"
done < frames.tsv
echo "Готово: $(ls -1 secretary-frames/*.png | wc -l) из 86"
