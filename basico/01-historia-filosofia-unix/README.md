# Video 01 — Historia y filosofía Unix/Linux

Student material. Goal: place every later command in its story — Unix ideas, GNU tools, Linux kernel — and pick licenses with intent.

## Use

100% narrative, no terminal needed. Read the timeline, then do the exercises on paper or in any notes app.

## Timeline seen in class

| Year | Event |
|---|---|
| 1969 | Thompson + Ritchie build Unix at Bell Labs (Multics failed, game Space Travel) |
| 1973 | Ritchie invents C, Unix rewritten in it — first OS in a high-level language, portable |
| 1983 | Stallman announces GNU (`net.unix-wizards`), FSF 1985, copyleft; tools gcc, emacs, bash, coreutils |
| 1991-08-25 | Torvalds posts to `comp.os.minix` ("just a hobby"), 0.01 ships September (~10,000 lines) |
| 1996 | Tux by Larry Ewing becomes the Linux logo |

Layers: kernel (talks to hardware) → OS (kernel + GNU tools) → distro (OS + package manager + apps + defaults). Your Ubuntu 24.04 = Linux kernel + GNU tools + apt + GNOME + Canonical defaults.

Licenses: GPL (copyleft — shipping changes forces source release, Linux and GNU use GPLv2), MIT (permissive — closed forks allowed, keep copyright notice), Apache 2.0 (MIT-like plus patent clause).

## Exercises (new, not in video)

1. **Order the timeline.** Shuffle and rewrite in order with year + one-line why it mattered: GNU announcement, Unix in C rewrite, Torvalds post, Tux logo, FSF founding.
2. **License picker.** Pick GPL, MIT, or Apache 2.0 for each and justify in one line: a weekend script you want everywhere including closed products; a library you want startups to adopt without fear; a codec where you hold patents and want users shielded from patent suits.
3. **Name the layer.** Each symptom is one layer — kernel, OS tools, or distro: boot dies with `Kernel panic`; `ls` missing after a minimal install; Wi-Fi works on Ubuntu but not on vanilla Debian. One line each.

## Warnings

- Philosophy quotes ("do one thing well", "everything is a file", "small is beautiful", plain text interface) pay off from video 2.2 onward as pipes. Park them, they return.
- `cat /var/log/syslog | grep -i error | sort | uniq -c` from class is a preview, not homework. Real pipelines start in module 6.

Solutions in `SOLUCIONES.md`.
