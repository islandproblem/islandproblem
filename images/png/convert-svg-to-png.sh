#!/bin/bash

set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for svg in "$DIR"/*.svg; do
  [ -f "$svg" ] || continue
  png="${svg%.svg}.png"
  echo "Converting: $(basename "$svg") -> $(basename "$png")"
  rsvg-convert "$svg" -o "$png"
done

echo "Done."
