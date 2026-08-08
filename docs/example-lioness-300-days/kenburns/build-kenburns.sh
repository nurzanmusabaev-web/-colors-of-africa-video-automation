#!/usr/bin/env bash
# Превращает статичные кадры 5120x2880 в клипы 1920x1080 по 7 секунд
# с медленным движением камеры.
#
# Рядом со скриптом нужна папка с кадрами (по умолчанию ../lioness-frames):
#   0_42.png, 1_52.png ...
# Запуск:  bash build-kenburns.sh [папка-с-кадрами]
#
# Движение берётся из moves.tsv: in = наезд, out = отъезд, drift = увод вбок.
# Масштаб держится в пределах 1.00-1.22, то есть кроп не опускается ниже
# 4200px по ширине — с запасом выше 1920, резкость не теряется.
set -euo pipefail
cd "$(dirname "$0")"
SRC="${1:-../lioness-frames}"
OUT="kb-clips"
DUR=7
FPS=30
FRAMES=$((DUR*FPS))
command -v ffmpeg >/dev/null || { echo "нужен ffmpeg"; exit 1; }
[ -d "$SRC" ] || { echo "нет папки с кадрами: $SRC"; exit 1; }
mkdir -p "$OUT"

i=0; total=$(wc -l < moves.tsv); missing=0
while IFS=$'\t' read -r name move; do
  i=$((i+1))
  in="$SRC/$name.png"
  out="$OUT/$name.mp4"
  if [ ! -f "$in" ]; then echo "[$i/$total] $name - НЕТ ИСХОДНИКА, пропуск"; missing=$((missing+1)); continue; fi
  if [ -s "$out" ]; then echo "[$i/$total] $name.mp4 уже есть"; continue; fi

  case "$move" in
    in)    Z="zoom+0.00095"; X="iw/2-(iw/zoom/2)"; Y="ih/2-(ih/zoom/2)" ;;
    out)   Z="if(eq(on,1),1.22,zoom-0.00095)"; X="iw/2-(iw/zoom/2)"; Y="ih/2-(ih/zoom/2)" ;;
    *)     Z="1.12"; X="(iw-iw/zoom)*on/$FRAMES"; Y="ih/2-(ih/zoom/2)" ;;
  esac

  ffmpeg -nostdin -y -v error -loop 1 -i "$in" -t "$DUR" \
    -vf "scale=7680:-2:flags=lanczos,zoompan=z='min(max($Z,1.0),1.22)':d=$FRAMES:x='$X':y='$Y':s=1920x1080:fps=$FPS,format=yuv420p" \
    -c:v libx264 -preset slow -crf 17 -r $FPS -an "$out"
  echo "[$i/$total] $name.mp4  ($move)"
done < moves.tsv

echo
echo "Готово: $(ls -1 "$OUT"/*.mp4 2>/dev/null | wc -l) клипов в $OUT/"
[ "$missing" -gt 0 ] && echo "Не найдено исходников: $missing"
exit 0
