# curso-linux — Curso de Linux (bytesofjose)

Material de trabajo del curso de Linux: laboratorio Docker + carpetas `demo/` para practicar lo de cada video.

## Estructura

```
Dockerfile + docker-compose.yml + init.sh   # laboratorio, en la raíz
basico/
  01-anatomia-comando-manuales/demo/
  02-navegacion-cd-ls-pwd-tree/demo/
```

| Video | Carpeta | Tema |
|---|---|---|
| 01 | `basico/01-anatomia-comando-manuales/` | Terminal, comandos y manuales |
| 02 | `basico/02-navegacion-cd-ls-pwd-tree/` | Navegación: cd, ls, pwd, tree |

## Uso del laboratorio

Desde la raíz del repo (Ubuntu 24.04 con Docker):

```bash
docker compose up -d --build
docker exec -it ubuntu-lab bash
```

El contenedor abre en `~/shared`. Copia ahí el demo del video, desde la raíz del repo en tu máquina:

```bash
cp -r basico/02-navegacion-cd-ls-pwd-tree/demo ~/shared/02-demo
```

O monta el repo con `-v` si prefieres trabajar directo sobre él.

Sin Docker también vale: usa la carpeta `demo/` del video directo en tu Linux e instala `tree`, `tldr` y `man` con tu gestor de paquetes.

## Toma en cuenta

Hay videos que no funcionan en contenedor y piden VM o máquina real:

| Videos | Por qué |
|---|---|
| systemd como PID 1 | el contenedor no tiene systemd |
| discos, particiones, LVM, RAID | necesitan dispositivos de bloque y `mkfs` |
| firewall con iptables | pide privilegios de red |
| `nmcli` | no hay NetworkManager en el contenedor |
| docker dentro de docker, KVM | piden `/dev/kvm` del anfitrión |

Nunca toques tus discos reales: practica siempre en una VM con snapshots.
