#!/usr/bin/env bash
# Downloads all 47 clips as 0_07.mp4 .. 14_14.mp4
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p lioness-clips
i=0; total=$(wc -l < clips.tsv)
while IFS=$'\t' read -r n u; do
  i=$((i+1))
  out="lioness-clips/$n.mp4"
  if [ -s "$out" ]; then echo "[$i/$total] $n.mp4 уже есть"; continue; fi
  curl -fL --retry 4 --retry-delay 2 --connect-timeout 20 --max-time 900 -# -o "$out" "$u"
  echo "[$i/$total] $n.mp4"
done < clips.tsv
echo "Готово: $(ls -1 lioness-clips/*.mp4 | wc -l) из 47"
