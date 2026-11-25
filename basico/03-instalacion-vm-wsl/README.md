# Video 03 — Instalación en VM / dual boot / WSL

Student material. Goal: get a disposable Ubuntu 24.04 you can break without fear, and know which of the three paths fits each machine.

## Use

Host-side video, no repo files needed. Work on your own computer: VirtualBox + Ubuntu 24.04 LTS ISO (~5.5GB) for the full path, or WSL2 on Windows 10/11 for the fast path.

Course VM sizing: 4096MB RAM (2048 minimum), 2 CPUs (1 minimum), 25GB dynamic disk, NAT network plus bridged adapter only if LAN access is needed, boot from ISO.

## Commands seen in class

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

## Exercises (new, not in video)

1. **Pre-flight.** Run `VBoxManage --version` (or record its absence plus your install command for your manager). Run `VBoxManage list vms` — empty counts, record it. Note your host free RAM and CPUs and the VM size you will assign from the course sizing above.
2. **Checksum drill.** Run `sha256sum` on the Ubuntu ISO (or any large file already downloaded if the ISO is still fetching). State in one line what a mismatch would mean and what you would do next.
3. **Pick the path.** Three profiles, one line each with the course reasoning: Windows laptop with 8GB RAM for the whole course; Linux-only desktop with 32GB RAM; borrowed Mac you must return intact. Options are full VM, WSL2, or dual boot — dual boot loses by default, say when it would still win.

## Warnings

- "Erase disk and install Ubuntu" is safe inside the VM and catastrophic on the host. Read the window title before clicking.
- Dual boot risks real data, complex partitioning, and a reboot every time you switch systems. Course default is VM; WSL2 is the Windows shortcut, not a replacement for the systemd, disks, and firewall videos later.
- WSL2 has no desktop GUI by default and does not implement every kernel call — later modules flag what must run in the VM.
- Guest Additions only work when run from the mounted CD directory, and clipboard sharing only counts once copy-paste is tested both ways.
- The 20-minute install is edited down. Do not skip watching the partition step even at double speed.

Solutions in `SOLUCIONES.md`.
