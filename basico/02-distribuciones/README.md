# Video 02 — Distribuciones: cuál elegir y por qué

Material de estudiante. Meta: identificar cualquier Linux en 30 segundos — distro, versión, familia, gestor — y saber qué gestor responde cada pregunta.

## Uso

Corre en tu máquina, sin sandbox. Comandos de solo lectura salvo el opcional `neofetch` — omítelo, basta `/etc/os-release`.

## Comandos

| Comando | Qué te dice |
|---|---|
| `cat /etc/os-release` | Credencial de la distro |
| `grep -E '^(NAME\|VERSION_ID\|ID\|ID_LIKE)=' /etc/os-release` | Nombre, versión, familia base |
| `uname -srm` | Kernel + versión + máquina |
| `uname -a` | Cadena completa con fecha de compilación |
| `which apt dnf pacman` | Qué gestor de familia existe aquí |
| `dpkg -l \| head -5` | Familia Debian: qué hay instalado |
| `apt show coreutils` | Familia Debian: intel del paquete antes de instalar |
| `rpm -qa \| head -5` | Familia Red Hat: qué hay instalado |
| `dnf info coreutils` | Familia Red Hat: intel del paquete |
| `pacman -Q \| head -5` | Familia Arch: qué hay instalado |
| `pacman -Si coreutils` | Familia Arch: intel del paquete |
| `neofetch` | Resumen bonito, opcional |

Árbol de familias: Debian 1993, estable, `.deb` (Ubuntu 2004, Mint, Kali) → Red Hat 1995, `.rpm`, contratos de soporte (Fedora comunidad, Rocky clon RHEL) → Arch 2002, rolling, DIY (Manjaro, EndeavourOS) → Alpine (~5MB, musl + BusyBox, favorita de contenedores). Recomendación del curso: Ubuntu 24.04 LTS o Fedora 40.

## Ejercicios

1. **Identifica tu máquina.** Corre el grep de os-release más `uname -srm` más el `which`. Una línea: distro + versión + kernel + familia + gestor. Ejemplo: `Ubuntu 24.04, kernel 6.8, familia Debian, apt`.
2. **Intel de paquetes.** Elige dos paquetes instalados. Muestra info solo con tu gestor nativo (`apt show`, `dnf info`, o `pacman -Si`). Anota versión + descripción de una línea. Sin instalar nada.
3. **El kernel no es la distro.** Anota `uname -r` y `VERSION_ID` de os-release. Explica en una línea por qué evolucionan aparte, con tus dos valores como evidencia.

## Avisos

- Sondea antes de escribir: `which` decide si los ejemplos `apt`, `dnf` o `pacman` aplican. Pegar la familia ajena da error.
- `rpm`, `dpkg` y `pacman -Q` solo consultan. `apt show` / `dnf info` / `pacman -Si` solo leen metadata. Ninguno instala — seguros en cualquier lado.
- Kali es Debian pero para seguridad ofensiva, no uso diario. El curso usa Ubuntu LTS o Fedora.
- Una distro 2024 puede correr kernel 2025 tras actualizar — normal, no es error.

Soluciones en `SOLUCIONES.md`.

---

Student material. Goal: identify any Linux box in 30 seconds — distro, version, family, package manager — and know which manager answers which question.

## Use

Run on your own machine, no sandbox needed. Read-only commands except the optional `neofetch` install — skip it, `/etc/os-release` is enough.

## Commands

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

Family tree: Debian 1993, stable, `.deb` (Ubuntu 2004, Mint, Kali) → Red Hat 1995, `.rpm`, support contracts (Fedora community, Rocky RHEL clone) → Arch 2002, rolling, DIY (Manjaro, EndeavourOS) → Alpine (~5MB, musl + BusyBox, container favorite). Course recommendation: Ubuntu 24.04 LTS or Fedora 40.

## Exercises

1. **ID this machine.** Run the os-release grep plus `uname -srm` plus the `which` probe. Write one line: distro + version + kernel + family + manager. Example: `Ubuntu 24.04, kernel 6.8, Debian family, apt`.
2. **Package intel.** Pick two packages installed on your box. Show info with your native manager only (`apt show`, `dnf info`, or `pacman -Si`). Note version + one-line description each. No installing anything.
3. **Kernel is not the distro.** Record `uname -r` and `VERSION_ID` from os-release. Explain in one line why they evolve separately, using your two values as evidence.

## Warnings

- Probe before you type: `which` decides whether `apt`, `dnf`, or `pacman` examples apply. Blind-pasting the wrong family errors out.
- `rpm`, `dpkg`, and `pacman -Q` only query. `apt show` / `dnf info` / `pacman -Si` only read metadata. None install — safe to run anywhere.
- Kali is Debian-based but built for offensive security, not daily use. Course boxes stay on Ubuntu LTS or Fedora.
- A 2024 distro can run a 2025 kernel after an update — normal, not a mismatch.

Solutions in `SOLUCIONES.md`.
