# Soluciones — Video 02

Los valores son formas, los tuyos salen de los mismos comandos en tu máquina.

## 1. Identifica tu máquina

```bash
grep -E '^(NAME|VERSION_ID|ID|ID_LIKE)=' /etc/os-release
uname -srm
which apt dnf pacman
```

Pasa: una línea con los cinco datos. Forma Ubuntu: `Ubuntu 24.04, kernel 6.8.0-41-generic x86_64, familia Debian (ID_LIKE=debian), apt`. Forma Arch: `Arch, rolling, kernel 6.x, familia Arch, pacman`. El `which` debe coincidir con la familia `ID`/`ID_LIKE`.

## 2. Intel de paquetes

```bash
apt show coreutils bash 2>/dev/null | grep -E '^(Package|Version|Description)' | head -12
```

Forma Red Hat: `dnf info coreutils bash | grep -E '^(Name|Version|Summary)'`. Forma Arch: `pacman -Si coreutils bash | grep -E '^(Name|Version|Description)'`. Pasa: dos paquetes, solo gestor nativo, versión + descripción, nada instalado.

## 3. El kernel no es la distro

```bash
uname -r
grep -E '^VERSION_ID=' /etc/os-release
```

Pasa: una línea tipo "kernel 6.8.0-41 (calendario upstream) vs Ubuntu 24.04 (snapshot Canonical abril-2024) — el kernel se actualiza dentro del ciclo de la distro, el número de versión se congela al lanzar". Vale cualquier separación correcta con tus dos valores.

---

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
