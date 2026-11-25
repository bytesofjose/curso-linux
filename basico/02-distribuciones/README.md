# Video 02 — Distribuciones: cuál elegir y por qué / Distros: which one and why

Student material. Goal: identify any Linux box in 30 seconds — distro, version, family, package manager — and know which manager answers which question.

Material de estudiante. Meta: identificar cualquier Linux en 30 segundos — distro, versión, familia, gestor — y saber qué gestor responde cada pregunta.

## Use / Uso

Run on your own machine, no sandbox needed. Read-only commands except the optional `neofetch` install — skip it, `/etc/os-release` is enough.

Corre en tu máquina, sin sandbox. Comandos de solo lectura salvo el opcional `neofetch` — omítelo, basta `/etc/os-release`.

## Commands / Comandos

| Command / Comando | What it tells you / Qué te dice |
|---|---|
| `cat /etc/os-release` | Distro identity card / credencial de la distro |
| `grep -E '^(NAME\|VERSION_ID\|ID\|ID_LIKE)=' /etc/os-release` | Name, version, family base / nombre, versión, familia base |
| `uname -srm` | Kernel name + release + machine / kernel + versión + máquina |
| `uname -a` | Full kernel string with build date / cadena completa con fecha |
| `which apt dnf pacman` | Which family manager exists here / qué gestor de familia existe aquí |
| `dpkg -l \| head -5` | Debian family: what is installed / qué hay instalado |
| `apt show coreutils` | Debian family: package intel before installing / intel del paquete antes de instalar |
| `rpm -qa \| head -5` | Red Hat family: what is installed / qué hay instalado |
| `dnf info coreutils` | Red Hat family: package intel / intel del paquete |
| `pacman -Q \| head -5` | Arch family: what is installed / qué hay instalado |
| `pacman -Si coreutils` | Arch family: package intel / intel del paquete |
| `neofetch` | Pretty summary, optional / resumen bonito, opcional |

Family tree / Árbol: Debian 1993, stable, `.deb` (Ubuntu 2004, Mint, Kali) → Red Hat 1995, `.rpm`, support contracts / contratos de soporte (Fedora community, Rocky RHEL clone) → Arch 2002, rolling, DIY (Manjaro, EndeavourOS) → Alpine (~5MB, musl + BusyBox, container favorite / favorita de contenedores). Course recommendation / Recomendación del curso: Ubuntu 24.04 LTS or / o Fedora 40.

## Exercises / Ejercicios

1. **ID this machine / Identifica tu máquina.** Run the os-release grep plus `uname -srm` plus the `which` probe. Write one line: distro + version + kernel + family + manager. / Corre el grep de os-release más `uname -srm` más el `which`. Una línea: distro + versión + kernel + familia + gestor.
2. **Package intel / Intel de paquetes.** Pick two packages installed on your box. Show info with your native manager only (`apt show`, `dnf info`, or `pacman -Si`). Note version + one-line description each. No installing anything. / Elige dos paquetes instalados. Muestra info solo con tu gestor nativo. Anota versión + descripción de una línea. Sin instalar nada.
3. **Kernel is not the distro / El kernel no es la distro.** Record `uname -r` and `VERSION_ID` from os-release. Explain in one line why they evolve separately, using your two values as evidence. / Anota `uname -r` y `VERSION_ID`. Explica en una línea por qué evolucionan aparte, con tus dos valores como evidencia.

## Warnings / Avisos

- Probe before you type: `which` decides whether `apt`, `dnf`, or `pacman` examples apply. / Sondea antes de escribir: `which` decide qué ejemplos aplican.
- `rpm`, `dpkg`, and `pacman -Q` only query. `apt show` / `dnf info` / `pacman -Si` only read metadata. None install — safe to run anywhere. / Solo consultan o leen metadata. Ninguno instala — seguros en cualquier lado.
- Kali is Debian-based but built for offensive security, not daily use. Course boxes stay on Ubuntu LTS or Fedora. / Kali es Debian pero para seguridad ofensiva, no uso diario. El curso usa Ubuntu LTS o Fedora.
- A 2024 distro can run a 2025 kernel after an update — normal, not a mismatch. / Una distro 2024 puede correr kernel 2025 tras actualizar — normal, no es error.

Solutions in `SOLUCIONES.md` / Soluciones en `SOLUCIONES.md`.
