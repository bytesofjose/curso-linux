# Solutions — Video 03

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
