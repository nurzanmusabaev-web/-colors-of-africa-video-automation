#!/usr/bin/env bash
# Downloads all 123 frames as 001.png .. 123.png in script order.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p png
i=0
while read -r u; do
  i=$((i+1))
  printf -v n '%03d' "$i"
  [ -s "png/$n.png" ] && continue
  curl -fsSL "$u" -o "png/$n.png"
  echo "$n ok"
done < urls.txt
