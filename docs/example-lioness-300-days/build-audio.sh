#!/usr/bin/env bash
# Собирает звуковую дорожку 861 сек из слоёв.
#
# Структура папок рядом со скриптом:
#   beds/A.wav .. beds/J.wav     — фоновые полотна (любой длины, зациклятся)
#   events/0_00.wav ...          — точечные звуки, имя = таймкод
#   drone.wav                    — низкочастотная подложка (необязательно)
#
# Запуск: bash build-audio.sh   →   lioness-audio.wav
set -euo pipefail
cd "$(dirname "$0")"
command -v ffmpeg >/dev/null || { echo "нужен ffmpeg: https://ffmpeg.org/download.html"; exit 1; }
TOTAL=861

# --- слой 1: полотна, зациклены до нужной длины и склеены кроссфейдом ---
mk_bed () { # $1=буква $2=длина $3=громкость
  [ -f "beds/$1.wav" ] || { echo "нет beds/$1.wav"; exit 1; }
  ffmpeg -y -v error -stream_loop -1 -i "beds/$1.wav" -t "$2" \
    -af "volume=$3,afade=t=in:st=0:d=2,afade=t=out:st=$(echo "$2-2"|bc):d=2" \
    -ar 44100 -ac 2 "tmp_bed_$1.wav"
}
mk_bed A 98  0.040
mk_bed B 84  0.032
mk_bed C 126 0.025
mk_bed D 98  0.050
mk_bed E 70  0.050
mk_bed F 84  0.063
mk_bed G 84  0.032
mk_bed H 98  0.020
mk_bed I 70  0.025
mk_bed J 49  0.079
ffmpeg -y -v error $(for b in A B C D E F G H I J; do printf -- "-i tmp_bed_%s.wav " "$b"; done) \
  -filter_complex "concat=n=10:v=0:a=1" -ar 44100 -ac 2 tmp_beds.wav

# --- слой 2: точечные звуки, каждый задержан на свой таймкод ---
INPUTS=(); FILTERS=(); N=0
for f in events/*.wav; do
  [ -e "$f" ] || continue
  base=$(basename "$f" .wav)            # например 9_48
  mm=${base%%_*}; ss=${base##*_}
  ms=$(( (10#$mm*60 + 10#$ss) * 1000 ))
  INPUTS+=(-i "$f")
  FILTERS+=("[$((N+1)):a]adelay=${ms}|${ms}[e$N]")
  N=$((N+1))
done

if [ "$N" -gt 0 ]; then
  MIX=$(for i in $(seq 0 $((N-1))); do printf "[e%d]" "$i"; done)
  ffmpeg -y -v error -i tmp_beds.wav "${INPUTS[@]}" -filter_complex \
    "$(IFS=';'; echo "${FILTERS[*]}");[0:a]${MIX}amix=inputs=$((N+1)):duration=first:normalize=0[out]" \
    -map "[out]" -t "$TOTAL" -ar 44100 -ac 2 tmp_mixed.wav
else
  echo "папка events/ пуста — собираю только фон"
  cp tmp_beds.wav tmp_mixed.wav
fi

# --- слой 3: дрон, если есть ---
if [ -f drone.wav ]; then
  ffmpeg -y -v error -i tmp_mixed.wav -stream_loop -1 -i drone.wav \
    -filter_complex "[1:a]volume=0.013,lowpass=f=80[d];[0:a][d]amix=inputs=2:duration=first:normalize=0[out]" \
    -map "[out]" -t "$TOTAL" -ar 44100 -ac 2 tmp_final.wav
else
  cp tmp_mixed.wav tmp_final.wav
fi

# --- нормализация под вещательный стандарт YouTube ---
ffmpeg -y -v error -i tmp_final.wav -af "loudnorm=I=-16:TP=-1.5:LRA=11" \
  -ar 44100 -ac 2 lioness-audio.wav
rm -f tmp_bed_*.wav tmp_beds.wav tmp_mixed.wav tmp_final.wav
echo "готово: lioness-audio.wav ($(ffprobe -v error -show_entries format=duration -of csv=p=0 lioness-audio.wav) сек)"
