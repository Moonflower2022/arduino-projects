#!/usr/bin/env bash
set -euo pipefail

EXCLUDE_DIRS=("libraries" "esp32_audio_tutorials")

for ino in *.ino; do
  [ -e "$ino" ] || continue

  name="${ino%.ino}"

  # skip if directory already exists
  if [ -d "$name" ]; then
    echo "skip: $ino (dir exists)"
    continue
  fi

  mkdir "$name"
  mv "$ino" "$name/$ino"
  echo "wrapped: $ino -> $name/"
done