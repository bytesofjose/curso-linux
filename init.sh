#!/bin/bash
cd "$(dirname "$0")"
docker compose up -d
docker exec ubuntu-lab bash -c 'grep -qxF "[ -f ~/shared/.bashrc ] && source ~/shared/.bashrc" ~/.bashrc || echo "[ -f ~/shared/.bashrc ] && source ~/shared/.bashrc" >> ~/.bashrc'
docker exec -it ubuntu-lab bash
