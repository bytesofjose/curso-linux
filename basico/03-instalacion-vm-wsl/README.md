# Video 03 — Instalación en VM / dual boot / WSL / Install on VM / dual boot / WSL

Student material. Goal: get a disposable Ubuntu 24.04 you can break without fear, and know which of the three paths fits each machine.

Material de estudiante. Meta: tener un Ubuntu 24.04 desechable que puedas romper sin miedo, y saber cuál de las tres rutas va con cada máquina.

## Use / Uso

Host-side video, no repo files needed. Work on your own computer: VirtualBox + Ubuntu 24.04 LTS ISO (~5.5GB) for the full path, or WSL2 on Windows 10/11 for the fast path.

Video del lado host, sin archivos del repo. Trabaja en tu compu: VirtualBox + ISO Ubuntu 24.04 LTS (~5.5GB) para la ruta completa, o WSL2 en Windows 10/11 para la rápida.

Course VM sizing / Medidas de la VM: 4096MB RAM (2048 minimum / mínimo), 2 CPUs (1 minimum / mínimo), 25GB dynamic disk / disco dinámico, NAT network plus bridged adapter only if LAN access is needed / red NAT más puente solo si necesitas LAN, boot from ISO / arranca desde la ISO.

## Commands / Comandos

| Command / Comando | What it proves / Qué prueba |
|---|---|
| `VBoxManage --version` | VirtualBox present and which release / VirtualBox presente y qué versión |
| `VBoxManage list vms` | Which VMs are registered / qué VMs existen |
| `VBoxManage showvminfo "Ubuntu-24.04" \| grep -E 'Memory\|CPUs\|NIC'` | The VM got the course sizing / la VM tiene las medidas del curso |
| `ls -lh ~/iso-linux/` | ISO actually downloaded, real size / ISO descargada, tamaño real |
| `sha256sum ~/iso-linux/ubuntu-24.04*.iso` | ISO intact, hash matches ubuntu.com / ISO intacta, hash coincide |
| `uname -a` | Inside the installed VM: kernel alive / dentro de la VM: kernel vivo |
| `lsb_release -a` | Inside the VM: release identity / identidad de la versión |
| `ls /media/$USER/VBox_GAs_*/` | Guest Additions CD mounted, enter there before running the installer / CD montado, entra ahí antes de instalar |
| `sudo ./VBoxLinuxAdditions.run` | Installer run from the mounted CD dir / instalador desde el dir del CD |
| `lsmod \| grep vboxguest` | Guest Additions kernel module loaded / módulo cargado |
| `wsl --install` | Windows admin PowerShell: installs WSL2 plus Ubuntu / instala WSL2 más Ubuntu |
| `wsl --set-default-version 2` | Default is the real kernel, not WSL1 / default es el kernel real |
| `wsl --install -d Ubuntu` | Adds the Ubuntu distro / agrega Ubuntu |
| `wsl -l -v` | Distros present and their WSL version / distros y su versión WSL |
| `wsl --status` | Default version and kernel state / versión default y estado |

Install flow inside the VM / Instalación en la VM: language + keyboard / idioma + teclado → Normal or / o Minimal type / tipo → "Erase disk and install Ubuntu" (safe only because it is the virtual disk / seguro solo porque es el disco virtual) → user + password / usuario + contraseña → ~20 minutes, compressed to minutes in the edit / ~20 min, comprimidos en la edición.

## Exercises / Ejercicios

1. **Pre-flight / Pre-vuelo.** Run `VBoxManage --version` (or record its absence plus your install command for your manager). Run `VBoxManage list vms` — empty counts, record it. Note your host free RAM and CPUs and the VM size you will assign. / Corre `VBoxManage --version` (o anota su ausencia más tu comando de instalación). Corre `VBoxManage list vms` — vacía cuenta, anótala. Anota tu RAM/CPUs libres y la medida de tu VM.
2. **Checksum drill / Prueba de checksum.** Run `sha256sum` on the Ubuntu ISO (or any large file already downloaded if the ISO is still fetching). State in one line what a mismatch would mean and what you would do next. / Corre `sha256sum` en la ISO (o cualquier archivo grande si la ISO sigue bajando). Una línea: qué significa un mismatch y qué harías.
3. **Pick the path / Elige la ruta.** Three profiles, one line each: Windows laptop with 8GB RAM for the whole course; Linux-only desktop with 32GB RAM; borrowed Mac you must return intact. Options are full VM, WSL2, or dual boot — dual boot loses by default, say when it would still win. / Tres perfiles, una línea cada uno: laptop Windows 8GB para todo el curso; escritorio solo-Linux 32GB; Mac prestada que debes devolver intacta. Opciones: VM completa, WSL2 o dual boot — dual boot pierde por default, di cuándo ganaría.

## Warnings / Avisos

- "Erase disk and install Ubuntu" is safe inside the VM and catastrophic on the host. Read the window title before clicking. / "Borrar disco" es seguro en la VM y catastrófico en el host. Lee el título de la ventana antes de clickear.
- Dual boot risks real data, complex partitioning, and a reboot every time you switch systems. Course default is VM; WSL2 is the Windows shortcut, not a replacement for the systemd, disks, and firewall videos later. / Dual boot arriesga datos reales, particionado complejo y reboot por cambio. El curso usa VM; WSL2 es el atajo Windows, no reemplaza los videos de systemd, discos y firewall.
- WSL2 has no desktop GUI by default and does not implement every kernel call — later modules flag what must run in the VM. / WSL2 no trae GUI ni implementa todo el kernel — módulos futuros marcan qué va en VM.
- Guest Additions only work when run from the mounted CD directory, and clipboard sharing only counts once copy-paste is tested both ways. / Guest Additions solo desde el dir del CD montado; el portapapeles cuenta cuando copiar-pegar funciona en ambos sentidos.
- The 20-minute install is edited down. Do not skip watching the partition step even at double speed. / La instalación de 20 min está editada. No saltes el paso de particionado ni a doble velocidad.

Solutions in `SOLUCIONES.md` / Soluciones en `SOLUCIONES.md`.
