# Soluciones — Video 03

## 1. Pre-vuelo

```bash
VBoxManage --version
VBoxManage list vms
free -h
nproc
```

Pasa: versión anotada (o la línea exacta de instalación para tu gestor), lista de VMs anotada aunque esté vacía, headroom del host anotado, asignación dentro de las medidas del curso (ejemplo: host 16GB → VM 4096MB + 2 CPUs). No crear VM aún cuenta — este ejercicio es inventario, no instalación.

## 2. Prueba de checksum

```bash
ls -lh ~/iso-linux/
sha256sum ~/iso-linux/ubuntu-24.04*.iso
```

Pasa: tamaño real cerca de ~5.5GB y el hash comparado carácter por carácter contra el publicado en ubuntu.com para ese punto exacto. Línea de mismatch: "no instalar — re-descargar, un bit volteado es imagen corrupta o manipulada". Vale cualquier archivo si la ISO sigue bajando, pero la línea de veredicto es obligatoria.

## 3. Elige la ruta

Windows 8GB → WSL2 para velocidad más una VM pequeña de 2048MB solo para los videos de systemd/discos/firewall. Razón: 8GB no sostiene cómoda una VM de 4096MB junto a Windows y el navegador.
Linux 32GB → VM completa a medidas del curso. Razón: snapshots, discos reales para el módulo 10, sin capa de traducción.
Mac prestada a devolver → solo VM, disco dinámico, snapshots, borrar el `.vdi` al devolver. Razón: cero particionado del host, cero residuos; dual boot queda descalificado por la devolución.
Dual boot solo gana con hardware limitado más necesidad de bare-metal (GPU, drivers Wi-Fi reales) en todo el curso — acepta el costo de backup + particionado + reboot explícito.

---
# English version

## 1. Pre-flight

```bash
VBoxManage --version
VBoxManage list vms
free -h
nproc
```

Pass: version recorded (or the exact install line for your manager), VM list recorded even if empty, host headroom noted, assignment within course sizing (example: host 16GB → VM 4096MB + 2 CPUs). No VM created yet counts as done — this exercise is inventory, not install.

## 2. Checksum drill

```bash
ls -lh ~/iso-linux/
sha256sum ~/iso-linux/ubuntu-24.04*.iso
```

Pass: real size near ~5.5GB and the printed hash compared character-for-character against the hash published on ubuntu.com for that exact point release. Mismatch line: "do not install — re-download, a flipped bit means a corrupt or tampered image." Any file works if the ISO is still fetching, but the verdict line is required.

## 3. Pick the path

Windows 8GB laptop → WSL2 for speed plus a small 2048MB VM only for the systemd/disks/firewall videos. Reason: 8GB cannot comfortably host a 4096MB VM alongside Windows and a browser.
Linux 32GB desktop → full VM at course sizing. Reason: snapshots, real disks for module 10, no translation layer.
Borrowed Mac to return intact → VM only, dynamic disk, snapshots, delete the `.vdi` on return. Reason: zero host partitioning, zero residue; dual boot is disqualified by the return condition.
Dual boot wins only with constrained hardware plus a need for bare-metal performance (GPU, real Wi-Fi drivers) across the whole course — accept the backup + partitioning + reboot cost explicitly.
