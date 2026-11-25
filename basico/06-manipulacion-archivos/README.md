# Video 06 — Manipulación de archivos: cp, mv, rm, mkdir

Student material. Goal: create, copy, move, rename and delete files without losing work.

## Use

Build your own lab with the class commands, then work on it (never in the repo):

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

## Commands seen in class

| Command | What it does |
|---|---|
| `mkdir -p a/b/c` | Creates full path at once |
| `mkdir d1 d2` | Creates several at once |
| `touch file` | Creates empty file or refreshes timestamp |
| `cp src dst` | Copies file |
| `cp -r dir dst` | Copies directory recursively |
| `cp -i` | Asks before overwrite |
| `cp -v` | Shows each copy |
| `cp -a` | Exact copy, keeps permissions and timestamps |
| `mv old new` | Renames (same dir) or moves (other dir) |
| `rm file` | Deletes forever, no trash |
| `rm -r dir` | Deletes directory recursively |
| `rm -i` | Asks before each delete |
| `trash-put file` | Sends to trash, recoverable |
| `trash-list` | Lists trash |
| `trash-restore` | Restores from trash |
| `trash-empty` | Empties trash |
| `cp file{,.bak}` | Quick backup copy |
| `mv !$ dest/` | Moves the file from the previous command |

## Exercises (new, not in video)

Build the lab above first. All work inside `/tmp/lab06`.

1. **Sort by type.** Backup first with `cp -a origen backup/origen-a`. Then inside `destino/` create `txt/`, `csv/`, `md/`. Copy (not move) each file from `origen/` to its folder by extension. Rename `datos.csv` to `datos-2024.csv` inside `destino/csv/` only. Verify with `tree destino` (or `ls -R`) and `ls -l backup/origen-a`.
2. **Two-hop move.** Move `mover-esto.txt` from `$LAB/` to `$LAB/destino/` renaming it to `etapa1.txt`, then to `$LAB/backup/` renaming it to `etapa2.txt`. Before each `mv`, make a `{,.bak}` copy of the source. Verify each hop with `ls -l`.
3. **Trash vs rm.** `trash-put` the file `borrar-esto.txt`, confirm with `trash-list` that it left `$LAB`, then `trash-restore` it back. Then copy it to `borrar-copia.txt` and delete the copy with `rm -i`. Write down in one line when you pick each tool from now on.

## Warnings

- `rm` has no undo. `rm -rf /`, `rm -rf ~`, `rm -rf .` destroy system, home, or current dir. Never run them.
- Plain `cp`/`mv` overwrite silently. Use `-i` when unsure.
- `rm -f` never asks. Only for scripts you already tested.
- `trash-restore` is interactive. `trash-empty` is as final as `rm`.
- Check `pwd` and `ls` before any recursive delete.

Solutions in `SOLUCIONES.md`.
