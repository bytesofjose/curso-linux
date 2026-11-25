#!/bin/bash
set -euo pipefail

echo "=== Video 05 — student env ==="

if ! command -v tree &>/dev/null; then
    if command -v apt &>/dev/null; then
        sudo apt update && sudo apt install -y tree
    elif command -v dnf &>/dev/null; then
        sudo dnf install -y tree
    elif command -v pacman &>/dev/null; then
        sudo pacman -Sy --needed --noconfirm tree
    fi
fi

LAB=/tmp/lab05
rm -rf "$LAB"
mkdir -p "$LAB"/proyectos/{web,api,mobile} "$LAB"/docs/{notas,pdfs} "$LAB"/scripts "$LAB"/backups
touch "$LAB/proyectos/web/"{index.html,style.css,app.js}
touch "$LAB/proyectos/api/"{server.py,config.json}
touch "$LAB/docs/notas/"{nota1.txt,nota2.txt}
echo "seed log line" > "$LAB/docs/notas/reporte-grande.log"
for _ in $(seq 1 3600); do echo "filler line for size demo" >> "$LAB/docs/notas/reporte-grande.log"; done

echo "✔ practice tree at $LAB"
ls -R "$LAB" | head -20
exit 0
