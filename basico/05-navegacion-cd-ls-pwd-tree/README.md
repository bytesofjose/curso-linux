# Video 05 — Navegación: cd, ls, pwd, tree

Material de estudiante. Meta: no perderte nunca — `pwd` te ancla, `cd` te mueve, `ls`/`tree` prueban dónde caíste.

## Uso

`setup.sh` siembra un árbol de práctica en `/tmp/lab05` e instala `tree`. Luego:

```bash
LAB=/tmp/lab05
cd $LAB
pwd
```

Árbol sembrado: `proyectos/{web/{index.html,style.css,app.js},api/{server.py,config.json},mobile/}`, `docs/{notas/{nota1.txt,nota2.txt,reporte-grande.log},pdfs/}`, `scripts/`, `backups/`. Sin `tree`, el reemplazo es `ls -R`. Tab y `Ctrl+R` necesitan shell interactiva — los scripts no los muestran.

## Comandos

| Comando | Qué prueba |
|---|---|
| `pwd`, `echo $PWD` | Dónde estás; la variable anticipa el uso de `$LAB` |
| `cd dir`, `cd ..`, `cd ../../` | Relativo, sube uno, sube dos |
| `cd ~`, `cd` | Ambos caen en home |
| `cd -` | Alterna los últimos dos dirs |
| `ls`, `ls -l`, `ls -lh` | Nombres, detalle, tamaños legibles (`-h` siempre con `-l`) |
| `ls -la` | Agrega archivos ocultos |
| `ls -lt` | Recientes primero |
| `ls -laS` | Grandes primero (`reporte-grande.log` flota arriba) |
| `ls -laht` | Combo estrella: ocultos + humano + recientes |
| `ls -lr` | Invierte el orden que venga |
| `tree`, `tree -L 2`, `tree -d`, `tree -I 'node_modules\|.git'` | Mapa completo, tope de profundidad, solo dirs, filtro de ruido |
| `ls -R` | Reemplazo de tree sin `tree` |
| `Tab`, `Tab Tab`, `Ctrl+R`, flechas, `history \| tail -5` | Completa, lista opciones, búsqueda reversa, repite |

Absoluta empieza en `/`, relativa donde estás, `.` es aquí, `..` es arriba.

## Ejercicios

1. **Ida y vuelta anclada.** Desde `~`, llega a `$LAB/docs/notas/` solo con ruta relativa, `pwd` por salto, `ls -la` al llegar. Vuelve a `~` con un `cd` absoluto. El log de `pwd` es el entregable.
2. **Caza-tamaños a ciegas.** Sin `-S`, adivina el mayor bajo `$LAB` con `ls -lh`. Luego `ls -laS $LAB/docs/notas` y confirma o corrige. Una línea: qué te engañó o confirmó.
3. **Taladro de profundidad.** Corre `tree -L 1`, `tree -L 2` y `tree -d` en `$LAB`. Reproduce la vista `-L 1` solo con `ls`. Una línea: cuándo `tree` y cuándo `ls -R` en máquina ajena.

## Avisos

- `-h` sola no hace nada — solo humaniza la salida de `-l`.
- `cd -` guarda exactamente dos slots. Un tercer `cd` expulsa el viejo; repetirlo solo alterna el par.
- Sin `-a` los ocultos no existen en la salida. Los dotfiles cuentan en todo orden de tamaño/fecha una vez visibles.
- `tree -I` toma un solo patrón citado con separadores `|`, no varios flags.
- `Ctrl+R` y flechas necesitan el historial de la shell interactiva.

Soluciones en `SOLUCIONES.md`.

---
# English version

Student material. Goal: never get lost — `pwd` anchors you, `cd` moves you, `ls`/`tree` prove where you landed.

## Use

`setup.sh` seeds a practice tree at `/tmp/lab05` and installs `tree`. Then:

```bash
LAB=/tmp/lab05
cd $LAB
pwd
```

Seeded tree: `proyectos/{web/{index.html,style.css,app.js},api/{server.py,config.json},mobile/}`, `docs/{notas/{nota1.txt,nota2.txt,reporte-grande.log},pdfs/}`, `scripts/`, `backups/`. Fallback when `tree` is missing is `ls -R`. Tab completion and `Ctrl+R` need an interactive shell — scripts will not demo them.

## Commands

| Command | What it proves |
|---|---|
| `pwd`, `echo $PWD` | Where you are, variable form previews `$LAB` usage |
| `cd dir`, `cd ..`, `cd ../../` | Relative move, up one, up two |
| `cd ~`, `cd` | Both land on home |
| `cd -` | Toggles between the last two dirs |
| `ls`, `ls -l`, `ls -lh` | Names, detail, human sizes (`-h` always rides with `-l`) |
| `ls -la` | Adds hidden files |
| `ls -lt` | Newest first |
| `ls -laS` | Biggest first (`reporte-grande.log` floats up) |
| `ls -laht` | Star combo: hidden + human + newest |
| `ls -lr` | Reverses whatever order came before |
| `tree`, `tree -L 2`, `tree -d`, `tree -I 'node_modules\|.git'` | Full map, depth cap, dirs only, noise filter |
| `ls -R` | Tree fallback on boxes without `tree` |
| `Tab`, `Tab Tab`, `Ctrl+R`, arrows, `history \| tail -5` | Complete, list options, reverse search, replay |

Absolute starts at `/`, relative starts where you stand, `.` is here, `..` is up one.

## Exercises

1. **Anchored round-trip.** From `~`, reach `$LAB/docs/notas/` by relative path only, `pwd` after every hop, `ls -la` at the target. Return to `~` with one absolute `cd`. Log each `pwd` — the log is the deliverable.
2. **Size hunt, blind first.** Without `-S`, guess the biggest file under `$LAB` from `ls -lh` output. Then run `ls -laS $LAB/docs/notas` and confirm or correct. One line on what misled you or confirmed you.
3. **Depth drill.** Run `tree -L 1`, `tree -L 2`, and `tree -d` on `$LAB`. Then reproduce the `-L 1` view with `ls` only. Note in one line when you reach for `tree` vs `ls -R` on a foreign box.

## Warnings

- `-h` alone does nothing — it only humanizes `-l` output.
- `cd -` holds exactly two slots. A third `cd` evicts the oldest; repeated `cd -` just toggles the pair.
- No `-a` means hidden files are silently absent. Dotfiles count in every size/date ordering once shown.
- `tree -I` takes one quoted pattern with `|` separators, not multiple flags.
- `Ctrl+R` and arrows need the interactive shell history.

Solutions in `SOLUCIONES.md`.
