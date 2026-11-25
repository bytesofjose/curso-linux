# Solutions — Video 06

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
