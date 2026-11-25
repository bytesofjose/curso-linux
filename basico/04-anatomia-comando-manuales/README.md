# Video 04 — Terminal, comandos y manuales / Terminal, commands and manuals

Student material. Goal: dissect any command into command + options + arguments, and answer "how does this flag work" alone with `man`, `--help`, and `tldr`.

Material de estudiante. Meta: diseccionar cualquier comando en comando + opciones + argumentos, y responder "para qué es este flag" solo con `man`, `--help` y `tldr`.

## Use / Uso

No files to copy — exercises run on system dirs (`/tmp`, `/etc`). Needs: `man` with coreutils pages restored, `cron` for `man 5 crontab`, `tldr` via pipx (`setup.sh` installs and updates all three; Ubuntu `apt` tldr is broken upstream — pipx is the fix, not a preference).

Sin archivos que copiar — los ejercicios corren en dirs del sistema (`/tmp`, `/etc`). Necesitas: `man` con páginas coreutils restauradas, `cron` para `man 5 crontab`, `tldr` vía pipx (`setup.sh` instala y actualiza los tres; el `tldr` de `apt` en Ubuntu está roto upstream — pipx es el fix, no preferencia).

## Commands / Comandos

| Command / Comando | What it answers / Qué responde |
|---|---|
| `tty` | Which terminal device, or "not a tty" without one / qué terminal, o "not a tty" |
| `ls -l /proc/$$/fd` | Shell fds 0/1/2 pointing at the PTY / fds del shell al PTY |
| `echo $0` | Which shell is running / qué shell corre |
| `ls`, `ls -l /home`, `ls -la /home /tmp` | Command → options → arguments, combined shorts, multiple args / comando → opciones → argumentos, cortas combinadas, varios args |
| `ls -laht`, `ls -lahtS <dir>` | Star combo plus size sort, alphabetical short-flag order / combo estrella más orden por tamaño, cortas en abecedario |
| `man ls`, `man cp` | Section 1 user commands, NAME/SYNOPSIS/OPTIONS pattern / sección 1, patrón NAME/SYNOPSIS/OPTIONS |
| `man 5 crontab` | Section 5 file format beats section 1 command / sección 5 le gana a la 1 |
| `man ls` + `/sort` + `n`/`N` + `q` | Search inside the pager / buscar en el pager |
| `ls --help` | Fast usage without pager / uso rápido sin pager |
| `help cd` | Builtins live here, not in man / builtins viven aquí, no en man |
| `tldr ls`, `tldr cp` | Practical examples first / ejemplos prácticos primero |
| `type ls`, `type cd`, `type -a echo` | External vs builtin vs both / externo vs builtin vs ambos |
| `alias ll='ls -la'` | User shortcut (video 2.4 expands it) / atajo (el 2.4 lo expande) |

Manual syntax (POSIX) / Sintaxis del manual: `[X]` optional / opcional, `<X>` required value / valor requerido, `...` repeatable / repetible. `ls [FILE...]` = files optional and repeatable / archivos opcionales y repetibles; `ping <destination>` = destination required / destino requerido.

## Exercises / Ejercicios

1. **Type detective / Detective de tipos.** Classify with `type` and `type -a`: `ls`, `cd`, `echo`, `ping`, `man`, plus `ll` (create the alias first if missing). Tag each external, builtin, both, or alias in one line each. / Clasifica con `type` y `type -a`: `ls`, `cd`, `echo`, `ping`, `man`, más `ll` (créalo si falta). Etiqueta cada uno en una línea.
2. **Manual syntax / Sintaxis del manual.** Open `man ls`, find `-S`/`--sort`, then run `ls -laS /tmp` and name the biggest entry. State what `[FILE...]` in the SYNOPSIS promised and how your command used it. / Abre `man ls`, busca `-S`, corre `ls -laS /tmp` y nombra el mayor. Di qué prometía `[FILE...]` y cómo lo usaste.
3. **Help chain / Cadena de ayuda.** For builtin `cd`: show `help cd` works and `man cd` has no page. For external `ls`: show both `man ls` and `ls --help` work. Write the one-line rule for where to look first next time. / Para `cd`: `help cd` sirve, `man cd` no existe. Para `ls`: ambos sirven. Escribe la regla de una línea para la próxima.

## Warnings / Avisos

- Minimal Ubuntu strips coreutils manpages and lacks `cron` — without the `setup.sh` reinstall, `man ls` and `man 5 crontab` legitimately show "No manual entry". Fix the install, not the command. / Ubuntu mínimo pela los manpages y no trae `cron` — sin el reinstall de `setup.sh`, el "No manual entry" es legítimo. Arregla la instalación, no el comando.
- Never `apt install tldr` on Ubuntu: the Haskell client ships a corrupt DB. `pipx install tldr && tldr --update` is the verified path. / Nunca `apt install tldr`: el cliente Haskell trae DB corrupta. El path verificado es pipx.
- `q` quits the pager; `/` searches, `n`/`N` cycle. A "frozen" terminal inside `man` is just the pager waiting. / `q` sale del pager; `/` busca, `n`/`N` ciclan. Una terminal "congelada" en `man` es el pager esperando.
- Short flags combine (`-laht`), long flags never do (`--human-readable` stands alone). Keep shorts alphabetical so the next reader parses them. / Las cortas combinan, las largas nunca. Cortas en abecedario para que el próximo las lea.
- `type ll` proving nothing is itself the answer: no alias yet. Create it, then re-run. / Que `type ll` no pruebe nada ya es la respuesta: aún no hay alias. Créalo y repite.

Solutions in `SOLUCIONES.md` / Soluciones en `SOLUCIONES.md`.
