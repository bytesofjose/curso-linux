# Video 06 — Manipulación de archivos / File manipulation: cp, mv, rm, mkdir

Student material. Goal: create, copy, move, rename and delete files without losing work.

Material de estudiante. Meta: crear, copiar, mover, renombrar y borrar archivos sin perder trabajo.

## Use / Uso

Build your own lab with the class commands, then work on it (never in the repo):

Construye tu lab con los comandos de clase, y trabaja ahí (nunca en el repo):

```bash
LAB=/tmp/lab06
rm -rf $LAB
mkdir -p $LAB/{origen,destino,backup}
touch $LAB/origen/{archivo1.txt,archivo2.txt,README.md,datos.csv}
echo "row1" > $LAB/origen/datos.csv
touch $LAB/{borrar-esto.txt,mover-esto.txt}
ls -R $LAB
```

Only extra tool: `trash-cli` (`setup.sh` installs it, nothing else).

Única herramienta extra: `trash-cli` (`setup.sh` la instala, nada más).

## Commands / Comandos

| Command / Comando | What it does / Qué hace |
|---|---|
| `mkdir -p a/b/c` | Creates full path at once / crea la ruta completa |
| `mkdir d1 d2` | Creates several at once / crea varios |
| `touch file` / `touch archivo` | Creates empty file or refreshes timestamp / crea vacío o refresca fecha |
| `cp src dst` | Copies file / copia archivo |
| `cp -r dir dst` | Copies directory recursively / copia dir recursivo |
| `cp -i` | Asks before overwrite / pregunta antes de sobrescribir |
| `cp -v` | Shows each copy / muestra cada copia |
| `cp -a` | Exact copy, keeps permissions and timestamps / copia exacta, guarda permisos y fechas |
| `mv old new` | Renames (same dir) or moves (other dir) / renombra o mueve |
| `rm file` | Deletes forever, no trash / borra para siempre, sin papelera |
| `rm -r dir` | Deletes directory recursively / borra dir recursivo |
| `rm -i` | Asks before each delete / pregunta por borrado |
| `trash-put file` | Sends to trash, recoverable / manda a papelera, recuperable |
| `trash-list` | Lists trash / lista papelera |
| `trash-restore` | Restores from trash / restaura de papelera |
| `trash-empty` | Empties trash / vacía papelera |
| `cp file{,.bak}` | Quick backup copy / copia rápida de respaldo |
| `mv !$ dest/` | Moves the file from the previous command / mueve el archivo del comando anterior |

## Exercises / Ejercicios

Build the lab above first. All work inside `/tmp/lab06`.

Construye el lab de arriba primero. Todo dentro de `/tmp/lab06`.

1. **Sort by type / Ordena por tipo.** Backup first with `cp -a origen backup/origen-a`. Then inside `destino/` create `txt/`, `csv/`, `md/`. Copy (not move) each file from `origen/` to its folder by extension. Rename `datos.csv` to `datos-2024.csv` inside `destino/csv/` only. Verify with `tree destino` (or `ls -R`) and `ls -l backup/origen-a`. / Respalda con `cp -a`, crea `txt/`, `csv/`, `md/` en `destino/`. Copia (no muevas) cada archivo a su carpeta por extensión. Renombra solo en `destino/csv/`. Verifica con `tree` o `ls -R`.
2. **Two-hop move / Mudanza en dos saltos.** Move `mover-esto.txt` from `$LAB/` to `$LAB/destino/` renaming it to `etapa1.txt`, then to `$LAB/backup/` renaming it to `etapa2.txt`. Before each `mv`, make a `{,.bak}` copy of the source. Verify each hop with `ls -l`. / Mueve con renombre en cada salto, con `{,.bak}` antes de cada `mv`. Verifica cada salto.
3. **Trash vs rm / Papelera vs rm.** `trash-put` the file `borrar-esto.txt`, confirm with `trash-list` that it left `$LAB`, then `trash-restore` it back. Then copy it to `borrar-copia.txt` and delete the copy with `rm -i`. Write down in one line when you pick each tool from now on. / Manda a papelera, confirma que salió, restáuralo. Copia a `borrar-copia.txt` y bórrala con `rm -i`. Una línea: cuándo usarás cada herramienta.

## Warnings / Avisos

- `rm` has no undo. `rm -rf /`, `rm -rf ~`, `rm -rf .` destroy system, home, or current dir. Never run them. / `rm` no tiene deshacer. Nunca los corras.
- Plain `cp`/`mv` overwrite silently. Use `-i` when unsure. / `cp`/`mv` plano sobrescribe en silencio. Usa `-i` si dudas.
- `rm -f` never asks. Only for scripts you already tested. / `rm -f` nunca pregunta. Solo en scripts probados.
- `trash-restore` is interactive. `trash-empty` is as final as `rm`. / `trash-restore` es interactivo. `trash-empty` es tan final como `rm`.
- Check `pwd` and `ls` before any recursive delete. / Revisa `pwd` y `ls` antes de borrar recursivo.

Solutions in `SOLUCIONES.md` / Soluciones en `SOLUCIONES.md`.
