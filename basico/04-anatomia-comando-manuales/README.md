# Video 04 — Terminal, comandos y manuales

Material de estudiante. Meta: diseccionar cualquier comando en comando + opciones + argumentos, y responder "para qué es este flag" solo con `man`, `--help` y `tldr`.

## Uso

Sin archivos que copiar — los ejercicios corren en dirs del sistema (`/tmp`, `/etc`). Necesitas: `man` con páginas coreutils restauradas, `cron` para `man 5 crontab`, `tldr` vía pipx (`setup.sh` instala y actualiza los tres; el `tldr` de `apt` en Ubuntu está roto upstream — pipx es el fix, no preferencia).

## Comandos

| Comando | Qué responde |
|---|---|
| `tty` | Qué terminal, o "not a tty" sin una |
| `ls -l /proc/$$/fd` | Fds 0/1/2 del shell apuntando al PTY |
| `echo $0` | Qué shell está corriendo |
| `ls`, `ls -l /home`, `ls -la /home /tmp` | Comando → opciones → argumentos, cortas combinadas, varios args |
| `ls -laht`, `ls -lahtS <dir>` | Combo estrella más orden por tamaño, cortas en abecedario |
| `man ls`, `man cp` | Sección 1: comandos de usuario, patrón NAME/SYNOPSIS/OPTIONS |
| `man 5 crontab` | Sección 5 (formato de archivo) le gana a la sección 1 |
| `man ls` + `/sort` + `n`/`N` + `q` | Buscar dentro del pager |
| `ls --help` | Uso rápido sin pager |
| `help cd` | Los builtins viven aquí, no en man |
| `tldr ls`, `tldr cp` | Ejemplos prácticos primero |
| `type ls`, `type cd`, `type -a echo` | Externo vs builtin vs ambos |
| `alias ll='ls -la'` | Atajo de usuario (el video 2.4 lo expande) |

Sintaxis del manual (POSIX): `[X]` opcional, `<X>` valor requerido, `...` repetible. `ls [FILE...]` = archivos opcionales y repetibles; `ping <destino>` = destino requerido.

## Ejercicios

1. **Detective de tipos.** Clasifica con `type` y `type -a`: `ls`, `cd`, `echo`, `ping`, `man`, más `ll` (créalo si falta). Etiqueta cada uno en una línea: externo, builtin, ambos o alias.
2. **Sintaxis del manual.** Abre `man ls`, busca `-S`/`--sort`, corre `ls -laS /tmp` y nombra la entrada mayor. Di qué prometía `[FILE...]` en la SYNOPSIS y cómo lo usó tu comando.
3. **Cadena de ayuda.** Para el builtin `cd`: muestra que `help cd` sirve y `man cd` no tiene página. Para el externo `ls`: muestra que `man ls` y `ls --help` sirven. Escribe la regla de una línea para saber dónde buscar primero la próxima vez.

## Avisos

- Ubuntu mínimo pela los manpages de coreutils y no trae `cron` — sin el reinstall de `setup.sh`, `man ls` y `man 5 crontab` muestran "No manual entry" con razón. Arregla la instalación, no el comando.
- Nunca `apt install tldr` en Ubuntu: el cliente Haskell trae DB corrupta. `pipx install tldr && tldr --update` es el path verificado.
- `q` sale del pager; `/` busca, `n`/`N` ciclan. Una terminal "congelada" en `man` es el pager esperando.
- Las cortas combinan (`-laht`), las largas nunca (`--human-readable` va sola). Cortas en abecedario para que el próximo las lea.
- Que `type ll` no pruebe nada ya es la respuesta: aún no hay alias. Créalo y repite.

Soluciones en `SOLUCIONES.md`.

---
# English version

Student material. Goal: dissect any command into command + options + arguments, and answer "how does this flag work" alone with `man`, `--help`, and `tldr`.

## Use

No files to copy — exercises run on system dirs (`/tmp`, `/etc`). Needs: `man` with coreutils pages restored, `cron` for `man 5 crontab`, `tldr` via pipx (`setup.sh` installs and updates all three; Ubuntu `apt` tldr is broken upstream — pipx is the fix, not a preference).

## Commands

| Command | What it answers |
|---|---|
| `tty` | Which terminal device, or "not a tty" without one |
| `ls -l /proc/$$/fd` | Shell fds 0/1/2 pointing at the PTY |
| `echo $0` | Which shell is running |
| `ls`, `ls -l /home`, `ls -la /home /tmp` | Command → options → arguments, combined shorts, multiple args |
| `ls -laht`, `ls -lahtS <dir>` | Star combo plus size sort, alphabetical short-flag order |
| `man ls`, `man cp` | Section 1 user commands, NAME/SYNOPSIS/OPTIONS pattern |
| `man 5 crontab` | Section 5 file format beats section 1 command |
| `man ls` + `/sort` + `n`/`N` + `q` | Search inside the pager |
| `ls --help` | Fast usage without pager |
| `help cd` | Builtins live here, not in man |
| `tldr ls`, `tldr cp` | Practical examples first |
| `type ls`, `type cd`, `type -a echo` | External vs builtin vs both |
| `alias ll='ls -la'` | User shortcut (video 2.4 expands it) |

Manual syntax (POSIX): `[X]` optional, `<X>` required value, `...` repeatable. `ls [FILE...]` = files optional and repeatable; `ping <destination>` = destination required.

## Exercises

1. **Type detective.** Classify with `type` and `type -a`: `ls`, `cd`, `echo`, `ping`, `man`, plus `ll` (create the alias first if missing). Tag each external, builtin, both, or alias in one line each.
2. **Manual syntax.** Open `man ls`, find `-S`/`--sort`, then run `ls -laS /tmp` and name the biggest entry. State what `[FILE...]` in the SYNOPSIS promised and how your command used it.
3. **Help chain.** For builtin `cd`: show `help cd` works and `man cd` has no page. For external `ls`: show both `man ls` and `ls --help` work. Write the one-line rule for where to look first next time.

## Warnings

- Minimal Ubuntu strips coreutils manpages and lacks `cron` — without the `setup.sh` reinstall, `man ls` and `man 5 crontab` legitimately show "No manual entry". Fix the install, not the command.
- Never `apt install tldr` on Ubuntu: the Haskell client ships a corrupt DB. `pipx install tldr && tldr --update` is the verified path.
- `q` quits the pager; `/` searches, `n`/`N` cycle. A "frozen" terminal inside `man` is just the pager waiting.
- Short flags combine (`-laht`), long flags never do (`--human-readable` stands alone). Keep shorts alphabetical so the next reader parses them.
- `type ll` proving nothing is itself the answer: no alias yet. Create it, then re-run.

Solutions in `SOLUCIONES.md`.
