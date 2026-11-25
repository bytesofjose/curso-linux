# Soluciones — Video 06

Construye el lab primero (ver README), luego `LAB=/tmp/lab06`.

## 1. Ordena por tipo

```bash
LAB=/tmp/lab06
cp -a $LAB/origen $LAB/backup/origen-a
mkdir -p $LAB/destino/{txt,csv,md}
cp $LAB/origen/*.txt $LAB/destino/txt/
cp $LAB/origen/*.csv $LAB/destino/csv/
cp $LAB/origen/*.md $LAB/destino/md/
mv $LAB/destino/csv/datos.csv $LAB/destino/csv/datos-2024.csv
ls -R $LAB/destino
ls -l $LAB/backup/origen-a
```

Pasa: `destino/{txt,csv,md}` con los archivos correctos, `origen/` intacto, `backup/origen-a` idéntico a `origen/`.

## 2. Mudanza en dos saltos

```bash
LAB=/tmp/lab06
cp $LAB/mover-esto.txt{,.bak}
mv $LAB/mover-esto.txt $LAB/destino/etapa1.txt
ls -l $LAB/destino
cp $LAB/destino/etapa1.txt{,.bak}
mv $LAB/destino/etapa1.txt $LAB/backup/etapa2.txt
ls -l $LAB/backup
```

Pasa: `etapa2.txt` en `backup/`, un `.bak` por salto junto a cada origen.

## 3. Papelera vs rm

```bash
LAB=/tmp/lab06
trash-put $LAB/borrar-esto.txt
trash-list
trash-restore
cp $LAB/borrar-esto.txt $LAB/borrar-copia.txt
rm -i $LAB/borrar-copia.txt
```

Pasa: el archivo sale de `$LAB` tras `trash-put`, vuelve tras `trash-restore`, la copia muere tras `rm -i`. Regla: papelera para los "tal vez", `rm -i` para los "sí seguro", nunca `rm -rf` pelado.

---

Build the lab first (see README), then `LAB=/tmp/lab06`.

## 1. Sort by type

```bash
LAB=/tmp/lab06
cp -a $LAB/origen $LAB/backup/origen-a
mkdir -p $LAB/destino/{txt,csv,md}
cp $LAB/origen/*.txt $LAB/destino/txt/
cp $LAB/origen/*.csv $LAB/destino/csv/
cp $LAB/origen/*.md $LAB/destino/md/
mv $LAB/destino/csv/datos.csv $LAB/destino/csv/datos-2024.csv
ls -R $LAB/destino
ls -l $LAB/backup/origen-a
```

Pass: `destino/{txt,csv,md}` hold the right files, `origen/` untouched, `backup/origen-a` identical to `origen/`.

## 2. Two-hop move

```bash
LAB=/tmp/lab06
cp $LAB/mover-esto.txt{,.bak}
mv $LAB/mover-esto.txt $LAB/destino/etapa1.txt
ls -l $LAB/destino
cp $LAB/destino/etapa1.txt{,.bak}
mv $LAB/destino/etapa1.txt $LAB/backup/etapa2.txt
ls -l $LAB/backup
```

Pass: `etapa2.txt` in `backup/`, one `.bak` per hop next to each source.

## 3. Trash vs rm

```bash
LAB=/tmp/lab06
trash-put $LAB/borrar-esto.txt
trash-list
trash-restore
cp $LAB/borrar-esto.txt $LAB/borrar-copia.txt
rm -i $LAB/borrar-copia.txt
```

Pass: file leaves `$LAB` after `trash-put`, returns after `trash-restore`, copy gone after `rm -i`. Rule of thumb: trash for maybes, `rm -i` for sure singles, never bare `rm -rf`.
