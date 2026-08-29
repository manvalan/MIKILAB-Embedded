#!/bin/bash

set -e

ROOT="$(cd "$(dirname "$0")" && pwd)"

echo "Initializing MIKILAB Embedded structure..."
echo "Root: $ROOT"

directories=(
    "docs"
    "docs/architecture"
    "docs/power"
    "docs/boot"
    "docs/clocks"
    "docs/interfaces"
    "docs/pcb"

    "research"
    "research/OSD32MP15x"
    "research/OSD32MP15x/datasheets"
    "research/OSD32MP15x/application-notes"
    "research/OSD32MP15x/layout"
    "research/OSD32MP15x/pin-mapping"
    "research/OSD32MP15x/analysis"

    "hardware"
    "hardware/kicad"
    "hardware/symbols"
    "hardware/footprints"

    "experiments"
)

for dir in "${directories[@]}"; do
    mkdir -p "$ROOT/$dir"
done

echo
echo "Directory structure created:"
echo

find "$ROOT" \
    -type d \
    -not -path "$ROOT/.git*" \
    | sed "s|$ROOT|.|" \
    | sort

echo
echo "Done."
