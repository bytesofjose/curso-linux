# Video 04 — Terminal, comandos y manuales

Student material. Goal: dissect any command into command + options + arguments, and answer "how does this flag work" alone with `man`, `--help`, and `tldr`.

## Use

No files to copy — exercises run on system dirs (`/tmp`, `/etc`). Needs: `man` with coreutils pages restored, `cron` for `man 5 crontab`, `tldr` via pipx (`setup.sh` installs and updates all three; Ubuntu `apt` tldr is broken upstream — pipx is the fix, not a preference).

## Commands seen in class

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

## Exercises (new, not in video)

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
