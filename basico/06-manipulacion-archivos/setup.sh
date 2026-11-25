#!/bin/bash
set -euo pipefail

echo "=== Video 06 — student env ==="

if ! command -v trash-put &>/dev/null; then
    if command -v apt &>/dev/null; then
        sudo apt update && sudo apt install -y trash-cli
    elif command -v dnf &>/dev/null; then
        sudo dnf install -y trash-cli
    elif command -v pacman &>/dev/null; then
        sudo pacman -Sy --needed --noconfirm trash-cli
    fi
fi

echo "✔ ready: build your lab with the class commands (see README), files stay in /tmp"
exit 0
