# Video 03 — Instalación en VM / dual boot / WSL

Material de estudiante. Meta: tener un Ubuntu 24.04 desechable que puedas romper sin miedo, y saber cuál de las tres rutas va con cada máquina.

## Uso

Video del lado host, sin archivos del repo. Trabaja en tu compu: VirtualBox + ISO Ubuntu 24.04 LTS (~5.5GB) para la ruta completa, o WSL2 en Windows 10/11 para la rápida.

Medidas de la VM del curso: 4096MB RAM (mínimo 2048), 2 CPUs (mínimo 1), 25GB disco dinámico, red NAT más adaptador puente solo si necesitas LAN, arranque desde la ISO.

## Comandos

| Comando | Qué prueba |
|---|---|
| `VBoxManage --version` | VirtualBox presente y qué versión |
| `VBoxManage list vms` | Qué VMs están registradas |
| `VBoxManage showvminfo "Ubuntu-24.04" \| grep -E 'Memory\|CPUs\|NIC'` | La VM tiene las medidas del curso |
| `ls -lh ~/iso-linux/` | ISO descargada, tamaño real |
| `sha256sum ~/iso-linux/ubuntu-24.04*.iso` | ISO intacta, hash coincide con ubuntu.com |
| `uname -a` | Dentro de la VM instalada: kernel vivo |
| `lsb_release -a` | Dentro de la VM: identidad de la versión |
| `ls /media/$USER/VBox_GAs_*/` | CD de Guest Additions montado, entra ahí antes de instalar |
| `sudo ./VBoxLinuxAdditions.run` | Instalador desde el dir del CD montado |
| `lsmod \| grep vboxguest` | Módulo del kernel de Guest Additions cargado |
| `wsl --install` | PowerShell como admin en Windows: instala WSL2 más Ubuntu |
| `wsl --set-default-version 2` | El default es el kernel real, no WSL1 |
| `wsl --install -d Ubuntu` | Agrega la distro Ubuntu |
| `wsl -l -v` | Distros presentes y su versión WSL |
| `wsl --status` | Versión default y estado del kernel |

Instalación dentro de la VM: idioma + teclado → tipo Normal o Mínima → "Borrar disco e instalar Ubuntu" (seguro solo porque es el disco virtual) → usuario + contraseña → ~20 minutos, comprimidos a minutos en la edición.

## Ejercicios

1. **Pre-vuelo.** Corre `VBoxManage --version` (o anota su ausencia más tu comando de instalación para tu gestor). Corre `VBoxManage list vms` — vacía cuenta, anótala. Anota tu RAM y CPUs libres y la medida de VM que asignarás según lo de arriba.
2. **Prueba de checksum.** Corre `sha256sum` en la ISO de Ubuntu (o cualquier archivo grande ya descargado si la ISO sigue bajando). Una línea: qué significaría un mismatch y qué harías después.
3. **Elige la ruta.** Tres perfiles, una línea cada uno: laptop Windows con 8GB RAM para todo el curso; escritorio solo-Linux con 32GB RAM; Mac prestada que debes devolver intacta. Opciones: VM completa, WSL2 o dual boot — dual boot pierde por default, di cuándo ganaría igual.

## Avisos

- "Borrar disco e instalar Ubuntu" es seguro dentro de la VM y catastrófico en el host. Lee el título de la ventana antes de clickear.
- Dual boot arriesga datos reales, particionado complejo y un reboot por cada cambio de sistema. El default del curso es VM; WSL2 es el atajo Windows, no reemplaza los videos de systemd, discos y firewall que vienen.
- WSL2 no trae GUI de escritorio por default ni implementa todas las llamadas del kernel — módulos futuros marcan qué debe correr en la VM.
- Guest Additions solo funciona desde el directorio del CD montado, y el portapapeles compartido solo cuenta cuando copiar-pegar se prueba en ambos sentidos.
- La instalación de 20 minutos está editada. No saltes el paso de particionado ni a doble velocidad.

Soluciones en `SOLUCIONES.md`.

---

Student material. Goal: get a disposable Ubuntu 24.04 you can break without fear, and know which of the three paths fits each machine.

## Use

Host-side video, no repo files needed. Work on your own computer: VirtualBox + Ubuntu 24.04 LTS ISO (~5.5GB) for the full path, or WSL2 on Windows 10/11 for the fast path.

Course VM sizing: 4096MB RAM (2048 minimum), 2 CPUs (1 minimum), 25GB dynamic disk, NAT network plus bridged adapter only if LAN access is needed, boot from ISO.

## Commands

| Command | What it proves |
|---|---|
| `VBoxManage --version` | VirtualBox present and which release |
| `VBoxManage list vms` | Which VMs are registered |
| `VBoxManage showvminfo "Ubuntu-24.04" \| grep -E 'Memory\|CPUs\|NIC'` | The VM got the course sizing |
| `ls -lh ~/iso-linux/` | ISO actually downloaded, real size |
| `sha256sum ~/iso-linux/ubuntu-24.04*.iso` | ISO intact, hash matches ubuntu.com |
| `uname -a` | Inside the installed VM: kernel alive |
| `lsb_release -a` | Inside the VM: release identity |
| `ls /media/$USER/VBox_GAs_*/` | Guest Additions CD mounted, enter there before running the installer |
| `sudo ./VBoxLinuxAdditions.run` | Installer run from the mounted CD dir |
| `lsmod \| grep vboxguest` | Guest Additions kernel module loaded |
| `wsl --install` | Windows admin PowerShell: installs WSL2 plus Ubuntu |
| `wsl --set-default-version 2` | Default is the real kernel, not WSL1 |
| `wsl --install -d Ubuntu` | Adds the Ubuntu distro |
| `wsl -l -v` | Distros present and their WSL version |
| `wsl --status` | Default version and kernel state |

Install flow inside the VM: language + keyboard → Normal or Minimal type → "Erase disk and install Ubuntu" (safe only because it is the virtual disk) → user + password → ~20 minutes, compressed to minutes in the edit.

## Exercises

1. **Pre-flight.** Run `VBoxManage --version` (or record its absence plus your install command for your manager). Run `VBoxManage list vms` — empty counts, record it. Note your host free RAM and CPUs and the VM size you will assign from the course sizing above.
2. **Checksum drill.** Run `sha256sum` on the Ubuntu ISO (or any large file already downloaded if the ISO is still fetching). State in one line what a mismatch would mean and what you would do next.
3. **Pick the path.** Three profiles, one line each: Windows laptop with 8GB RAM for the whole course; Linux-only desktop with 32GB RAM; borrowed Mac you must return intact. Options are full VM, WSL2, or dual boot — dual boot loses by default, say when it would still win.

## Warnings

- "Erase disk and install Ubuntu" is safe inside the VM and catastrophic on the host. Read the window title before clicking.
- Dual boot risks real data, complex partitioning, and a reboot every time you switch systems. Course default is VM; WSL2 is the Windows shortcut, not a replacement for the systemd, disks, and firewall videos later.
- WSL2 has no desktop GUI by default and does not implement every kernel call — later modules flag what must run in the VM.
- Guest Additions only work when run from the mounted CD directory, and clipboard sharing only counts once copy-paste is tested both ways.
- The 20-minute install is edited down. Do not skip watching the partition step even at double speed.

Solutions in `SOLUCIONES.md`.
