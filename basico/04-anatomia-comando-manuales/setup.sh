#!/bin/bash
set -euo pipefail

echo "=== Video 04 — student env ==="

if command -v apt &>/dev/null; then
    sudo apt update
    sudo apt install -y man-db cron pipx
    sudo apt install -y --reinstall coreutils
    pipx install tldr || pipx upgrade tldr
elif command -v dnf &>/dev/null; then
    sudo dnf install -y man-db cronie tldr
elif command -v pacman &>/dev/null; then
    sudo pacman -Sy --needed --noconfirm man-db cronie tldr
fi

tldr --update 2>/dev/null || true
echo "✔ ready: man ls / man 5 crontab / tldr ls"
exit 0
