# Soluciones — Video 05

Siembra primero: `bash setup.sh`. Luego `LAB=/tmp/lab05`.

## 1. Ida y vuelta anclada

```bash
cd ~
pwd
cd /tmp/lab05/docs/notas
pwd
ls -la
cd ~
pwd
```

Variante relativa (baja caminando: `cd /tmp/lab05`, `cd docs`, `cd notas`, `pwd` por salto). Pasa: un log de `pwd` con una línea por salto más el `ls -la` en `notas/`, terminando en `~`.

## 2. Caza-tamaños a ciegas

```bash
LAB=/tmp/lab05
ls -lh $LAB/docs/notas
ls -laS $LAB/docs/notas
```

Pasa: adivinanza ciega anotada antes del `-S`, ganador nombrado (`reporte-grande.log`, 92K sembrado) más la lección de una línea (fechas se agrupan, tamaños no — lo reciente engaña al ojo de tamaños).

## 3. Taladro de profundidad

```bash
LAB=/tmp/lab05
tree -L 1 $LAB
tree -L 2 $LAB
tree -d $LAB
ls -C $LAB
ls -R $LAB | head -30
```

Pasa: tres salidas tree capturadas, reproducción con `ls` del nivel `-L 1`, y la regla: `tree` para mapas, `ls -R` cuando no hay `tree` (checa con `command -v tree || ls -R $LAB`).

---
# English version

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
