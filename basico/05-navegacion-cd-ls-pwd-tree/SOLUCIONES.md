# Solutions — Video 05

Seed first: `bash setup.sh`. Then `LAB=/tmp/lab05`.

## 1. Anchored round-trip

```bash
cd ~
pwd
cd /tmp/lab05/docs/notas
pwd
ls -la
cd ~
pwd
```

Relative-shape variant (walk down: `cd /tmp/lab05`, `cd docs`, `cd notas`, `pwd` each hop). Pass: a `pwd` log with one line per hop plus the `ls -la` at `notas/`, ending back at `~`.

## 2. Size hunt, blind first

```bash
LAB=/tmp/lab05
ls -lh $LAB/docs/notas
ls -laS $LAB/docs/notas
```

Pass: blind guess recorded before the `-S` run, then the `-laS` winner named (`reporte-grande.log`, 92K seeded) plus the one-line lesson (timestamps cluster, sizes do not — recency misleads size guesses).

## 3. Depth drill

```bash
LAB=/tmp/lab05
tree -L 1 $LAB
tree -L 2 $LAB
tree -d $LAB
ls -C $LAB
ls -R $LAB | head -30
```

Pass: three tree outputs captured, `ls` reproduction of the `-L 1` top level, and the rule line: `tree` for maps, `ls -R` when `tree` is absent (check with `command -v tree || ls -R $LAB`).
