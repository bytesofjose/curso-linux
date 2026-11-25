# Soluciones — Video 04

## 1. Detective de tipos

```bash
type ls
type cd
type -a echo
type ping
type man
type ll 2>/dev/null || alias ll='ls -la'
type ll
```

Pasa: `ls` externo, `cd` builtin, `echo` ambos (builtin + `/usr/bin/echo`), `ping` externo, `man` externo, `ll` alias tras crearlo. Una etiqueta por comando, sin ensayos.

## 2. Sintaxis del manual

```bash
man ls
ls -laS /tmp
```

Pasa: entrada mayor nombrada del listado `-S` más la lectura de `[FILE...]`: corchetes = opcional, `...` = repetible, así que `ls` solo, `ls un-dir` y `ls dir1 dir2` son legales — tu comando usó "un dir, ordenado por tamaño".

## 3. Cadena de ayuda

```bash
help cd
man cd
man ls
ls --help
```

Pasa: `help cd` imprime, `man cd` no tiene página; ambos de `ls` imprimen. Línea de regla: builtins → `help` primero; externos → `man` para fondo, `--help` para rápido, `tldr` para ejemplos.

---

## 1. Type detective

```bash
type ls
type cd
type -a echo
type ping
type man
type ll 2>/dev/null || alias ll='ls -la'
type ll
```

Pass: `ls` external, `cd` builtin, `echo` both (builtin + `/usr/bin/echo`), `ping` external, `man` external, `ll` alias after creation. One tag per command, no essays.

## 2. Manual syntax

```bash
man ls
ls -laS /tmp
```

Pass: biggest entry named from the `-S` listing plus the `[FILE...]` reading: brackets = optional, `...` = repeatable, so bare `ls`, `ls one-dir`, and `ls dir1 dir2` are all legal — your command used "one dir, sorted by size".

## 3. Help chain

```bash
help cd
man cd
man ls
ls --help
```

Pass: `help cd` prints, `man cd` reports no page; both `ls` lookups print. Rule line: builtins → `help` first; externals → `man` for depth, `--help` for speed, `tldr` for examples.
