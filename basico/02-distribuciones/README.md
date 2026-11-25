# Video 02 — Distribuciones: cuál elegir y por qué

Student material. Goal: identify any Linux box in 30 seconds — distro, version, family, package manager — and know which manager answers which question.

## Use

Run on your own machine, no sandbox needed. Read-only commands except the optional `neofetch` install — skip it, `/etc/os-release` is enough.

## Commands seen in class

| Command | What it tells you |
|---|---|
| `cat /etc/os-release` | Distro identity card |
| `grep -E '^(NAME\|VERSION_ID\|ID\|ID_LIKE)=' /etc/os-release` | Name, version, family base |
| `uname -srm` | Kernel name + release + machine |
| `uname -a` | Full kernel string with build date |
| `which apt dnf pacman` | Which family manager exists here |
| `dpkg -l \| head -5` | Debian family: what is installed |
| `apt show coreutils` | Debian family: package intel before installing |
| `rpm -qa \| head -5` | Red Hat family: what is installed |
| `dnf info coreutils` | Red Hat family: package intel |
| `pacman -Q \| head -5` | Arch family: what is installed |
| `pacman -Si coreutils` | Arch family: package intel |
| `neofetch` | Pretty summary, optional |

Family tree from class: Debian 1993, stable, `.deb` (Ubuntu 2004, Mint, Kali) → Red Hat 1995, `.rpm`, support contracts (Fedora community, Rocky RHEL clone) → Arch 2002, rolling, DIY (Manjaro, EndeavourOS) → Alpine (~5MB, musl + BusyBox, container favorite). Course recommendation: Ubuntu 24.04 LTS or Fedora 40.

## Exercises (new, not in video)

1. **ID this machine.** Run the os-release grep plus `uname -srm` plus the `which` probe. Write one line: distro + version + kernel + family + manager. Example shape: `Ubuntu 24.04, kernel 6.8, Debian family, apt`.
2. **Package intel.** Pick two packages installed on your box. Show info with your native manager only (`apt show`, `dnf info`, or `pacman -Si`). Note version + one-line description each. No installing anything.
3. **Kernel is not the distro.** Record `uname -r` and `VERSION_ID` from os-release. Explain in one line why they evolve separately, using your two values as evidence.

## Warnings

- Probe before you type: `which` decides whether `apt`, `dnf`, or `pacman` examples apply. Blind-pasting the wrong family errors out.
- `rpm`, `dpkg`, and `pacman -Q` only query. `apt show` / `dnf info` / `pacman -Si` only read metadata. None install — safe to run anywhere.
- Kali is Debian-based but built for offensive security, not daily use. Course boxes stay on Ubuntu LTS or Fedora.
- A 2024 distro can run a 2025 kernel after an update — normal, not a mismatch.

Solutions in `SOLUCIONES.md`.
