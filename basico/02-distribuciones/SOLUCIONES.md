# Solutions — Video 02

Values below are shapes, yours follow the same commands on your box.

## 1. ID this machine

```bash
grep -E '^(NAME|VERSION_ID|ID|ID_LIKE)=' /etc/os-release
uname -srm
which apt dnf pacman
```

Pass: one line with all five facts. Ubuntu shape: `Ubuntu 24.04, kernel 6.8.0-41-generic x86_64, Debian family (ID_LIKE=debian), apt`. Arch shape: `Arch, rolling, kernel 6.x, Arch family, pacman`. The `which` hit must match the `ID`/`ID_LIKE` family.

## 2. Package intel

```bash
apt show coreutils bash 2>/dev/null | grep -E '^(Package|Version|Description)' | head -12
```

Red Hat shape: `dnf info coreutils bash | grep -E '^(Name|Version|Summary)'`. Arch shape: `pacman -Si coreutils bash | grep -E '^(Name|Version|Description)'`. Pass: two packages, native manager only, version + description noted, nothing installed.

## 3. Kernel is not the distro

```bash
uname -r
grep -E '^VERSION_ID=' /etc/os-release
```

Pass: one line like "kernel 6.8.0-41 (upstream schedule) vs Ubuntu 24.04 (Canonical April-2024 snapshot) — kernel updates ship inside the distro lifecycle, the release number freezes at launch." Any correct separate-evolution statement with your two values counts.
