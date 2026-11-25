# Video 05 — Navegación: cd, ls, pwd, tree / Navigation: cd, ls, pwd, tree

Student material. Goal: never get lost — `pwd` anchors you, `cd` moves you, `ls`/`tree` prove where you landed.

Material de estudiante. Meta: no perderte nunca — `pwd` te ancla, `cd` te mueve, `ls`/`tree` prueban dónde caíste.

## Use / Uso

`setup.sh` seeds a practice tree at `/tmp/lab05` and installs `tree`. Then:

`setup.sh` siembra un árbol de práctica en `/tmp/lab05` e instala `tree`. Luego:

```bash
LAB=/tmp/lab05
cd $LAB
pwd
```

Seeded tree / Árbol sembrado: `proyectos/{web/{index.html,style.css,app.js},api/{server.py,config.json},mobile/}`, `docs/{notas/{nota1.txt,nota2.txt,reporte-grande.log},pdfs/}`, `scripts/`, `backups/`. Fallback when `tree` is missing is `ls -R` / Sin `tree`, usa `ls -R`. Tab completion and `Ctrl+R` need an interactive shell — scripts will not demo them / Tab y `Ctrl+R` necesitan shell interactiva — los scripts no los muestran.

## Commands / Comandos

| Command / Comando | What it proves / Qué prueba |
|---|---|
| `pwd`, `echo $PWD` | Where you are, variable form previews `$LAB` usage / dónde estás, la variable anticipa `$LAB` |
| `cd dir`, `cd ..`, `cd ../../` | Relative move, up one, up two / relativo, sube uno, sube dos |
| `cd ~`, `cd` | Both land on home / ambos caen en home |
| `cd -` | Toggles between the last two dirs / alterna los últimos dos dirs |
| `ls`, `ls -l`, `ls -lh` | Names, detail, human sizes (`-h` always rides with `-l`) / nombres, detalle, tamaños (`-h` siempre con `-l`) |
| `ls -la` | Adds hidden files / agrega ocultos |
| `ls -lt` | Newest first / recientes primero |
| `ls -laS` | Biggest first (`reporte-grande.log` floats up) / grandes primero |
| `ls -laht` | Star combo: hidden + human + newest / combo: ocultos + humano + recientes |
| `ls -lr` | Reverses whatever order came before / invierte el orden |
| `tree`, `tree -L 2`, `tree -d`, `tree -I 'node_modules\|.git'` | Full map, depth cap, dirs only, noise filter / mapa, tope, solo dirs, filtro |
| `ls -R` | Tree fallback on boxes without `tree` / reemplazo sin `tree` |
| `Tab`, `Tab Tab`, `Ctrl+R`, arrows, `history \| tail -5` | Complete, list options, reverse search, replay / completa, opciones, búsqueda reversa, repite |

Absolute starts at `/`, relative starts where you stand, `.` is here, `..` is up one. / Absoluta empieza en `/`, relativa donde estás, `.` es aquí, `..` es arriba.

## Exercises / Ejercicios

1. **Anchored round-trip / Ida y vuelta anclada.** From `~`, reach `$LAB/docs/notas/` by relative path only, `pwd` after every hop, `ls -la` at the target. Return to `~` with one absolute `cd`. Log each `pwd` — the log is the deliverable. / Desde `~`, llega a `$LAB/docs/notas/` solo con relativa, `pwd` por salto, `ls -la` al llegar. Vuelve a `~` con un `cd` absoluto. El log de `pwd` es el entregable.
2. **Size hunt, blind first / Caza-tamaños a ciegas.** Without `-S`, guess the biggest file under `$LAB` from `ls -lh` output. Then run `ls -laS $LAB/docs/notas` and confirm or correct. One line on what misled you or confirmed you. / Sin `-S`, adivina el mayor con `ls -lh`. Luego `ls -laS` y confirma o corrige. Una línea: qué te engañó o confirmó.
3. **Depth drill / Taladro de profundidad.** Run `tree -L 1`, `tree -L 2`, and `tree -d` on `$LAB`. Then reproduce the `-L 1` view with `ls` only. Note in one line when you reach for `tree` vs `ls -R` on a foreign box. / Corre los tres `tree`. Reproduce el `-L 1` solo con `ls`. Una línea: cuándo `tree` y cuándo `ls -R` en máquina ajena.

## Warnings / Avisos

- `-h` alone does nothing — it only humanizes `-l` output. / `-h` sola no hace nada — solo humaniza `-l`.
- `cd -` holds exactly two slots. A third `cd` evicts the oldest; repeated `cd -` just toggles the pair. / `cd -` guarda dos slots. Un tercer `cd` expulsa el viejo; repetirlo solo alterna.
- No `-a` means hidden files are silently absent. Dotfiles count in every size/date ordering once shown. / Sin `-a` los ocultos no existen. Los dotfiles cuentan en todo orden una vez visibles.
- `tree -I` takes one quoted pattern with `|` separators, not multiple flags. / `tree -I` toma un patrón citado con `|`, no varios flags.
- `Ctrl+R` and arrows need the interactive shell history. / `Ctrl+R` y flechas necesitan el historial interactivo.

Solutions in `SOLUCIONES.md` / Soluciones en `SOLUCIONES.md`.
