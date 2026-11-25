#!/bin/bash
set -euo pipefail

NEEDED_TOOLS=""
PRACTICE_ROOT=""

echo "=== Video NN — student env ==="

if [ -n "$NEEDED_TOOLS" ]; then
    if command -v apt &>/dev/null; then
        sudo apt update && sudo apt install -y $NEEDED_TOOLS
    elif command -v dnf &>/dev/null; then
        sudo dnf install -y $NEEDED_TOOLS
    elif command -v pacman &>/dev/null; then
        sudo pacman -Sy --needed --noconfirm $NEEDED_TOOLS
    fi
fi

if [ -n "$PRACTICE_ROOT" ]; then
    rm -rf "$PRACTICE_ROOT"
    mkdir -p "$PRACTICE_ROOT"
fi

echo "✔ ready"
exit 0
