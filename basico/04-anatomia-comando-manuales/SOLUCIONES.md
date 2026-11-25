# Solutions — Video 04

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
