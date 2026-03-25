#!/bin/bash
# Resize all JPEG images in this directory to max 800px (longest side)
# and store them in a small/ subdirectory.

cd "$(dirname "$0")"
mkdir -p small

for f in *.jpeg *.jpg *.png; do
  [ -f "$f" ] || continue
  sips -Z 800 "$f" --out "small/$f" 2>/dev/null
  echo "Resized: $f"
done
