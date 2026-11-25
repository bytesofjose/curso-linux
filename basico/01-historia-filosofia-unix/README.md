# Video 01 — Historia y filosofía Unix/Linux

Material de estudiante. Meta: ubicar cada comando futuro en su historia — ideas Unix, herramientas GNU, kernel Linux — y elegir licencias con criterio.

## Uso

100% narrativo, sin terminal. Lee la línea de tiempo y haz los ejercicios en papel o en tu app de notas.

## Línea de tiempo

| Año | Evento |
|---|---|
| 1969 | Thompson y Ritchie crean Unix en Bell Labs (fracasó Multics, juego Space Travel) |
| 1973 | Ritchie inventa C y reescriben Unix en C — primer SO en lenguaje de alto nivel, portable |
| 1983 | Stallman anuncia GNU (`net.unix-wizards`), FSF 1985, copyleft; herramientas gcc, emacs, bash, coreutils |
| 1991-08-25 | Torvalds publica en `comp.os.minix` ("just a hobby"), la 0.01 sale en septiembre (~10.000 líneas) |
| 1996 | Tux de Larry Ewing se vuelve el logo de Linux |

Capas: kernel (habla con el hardware) → SO (kernel + herramientas GNU) → distro (SO + gestor de paquetes + apps + valores).

Licencias: GPL (copyleft — distribuir cambios obliga a publicar el fuente, Linux y GNU usan GPLv2), MIT (permisiva — permite forks cerrados, conserva el aviso), Apache 2.0 (como MIT más cláusula de patentes).

## Ejercicios

1. **Ordena la línea.** Desordena y reescribe en orden con año + por qué importó en una línea: anuncio GNU, Unix en C, post de Torvalds, logo Tux, fundación FSF.
2. **Elige licencia.** Elige GPL, MIT o Apache 2.0 para cada caso y justifica en una línea: un script de fin de semana que quieres en todas partes incluso productos cerrados; una librería para startups sin miedo legal; un codec con tus patentes protegiendo usuarios.
3. **Nombra la capa.** Cada síntoma es una capa — kernel, herramientas del SO o distro: arranque muere con `Kernel panic`; falta `ls` tras instalación mínima; Wi-Fi funciona en Ubuntu pero no en Debian vanilla. Una línea cada uno.

## Avisos

- Las citas de filosofía Unix ("do one thing well", "everything is a file", "small is beautiful", texto plano) rinden desde el video 2.2 como pipes. Guárdalas, vuelven.
- `cat /var/log/syslog | grep -i error | sort | uniq -c` de clase es adelanto, no tarea. Los pipes reales empiezan en el módulo 6.

Soluciones en `SOLUCIONES.md`.

---

Student material. Goal: place every later command in its story — Unix ideas, GNU tools, Linux kernel — and pick licenses with intent.

## Use

100% narrative, no terminal needed. Read the timeline, then do the exercises on paper or in any notes app.

## Timeline

| Year | Event |
|---|---|
| 1969 | Thompson + Ritchie build Unix at Bell Labs (Multics failed, game Space Travel) |
| 1973 | Ritchie invents C, Unix rewritten in it — first OS in a high-level language, portable |
| 1983 | Stallman announces GNU (`net.unix-wizards`), FSF 1985, copyleft; tools gcc, emacs, bash, coreutils |
| 1991-08-25 | Torvalds posts to `comp.os.minix` ("just a hobby"), 0.01 ships September (~10,000 lines) |
| 1996 | Tux by Larry Ewing becomes the Linux logo |

Layers: kernel (talks to hardware) → OS (kernel + GNU tools) → distro (OS + package manager + apps + defaults).

Licenses: GPL (copyleft — shipping changes forces source release, Linux and GNU use GPLv2), MIT (permissive — closed forks allowed, keep copyright notice), Apache 2.0 (MIT-like plus patent clause).

## Exercises

1. **Order the timeline.** Shuffle and rewrite in order with year + one-line why it mattered: GNU announcement, Unix in C rewrite, Torvalds post, Tux logo, FSF founding.
2. **License picker.** Pick GPL, MIT, or Apache 2.0 for each and justify in one line: a weekend script you want everywhere including closed products; a library you want startups to adopt without fear; a codec where you hold patents and want users shielded from patent suits.
3. **Name the layer.** Each symptom is one layer — kernel, OS tools, or distro: boot dies with `Kernel panic`; `ls` missing after a minimal install; Wi-Fi works on Ubuntu but not on vanilla Debian. One line each.

## Warnings

- Philosophy quotes ("do one thing well", "everything is a file", "small is beautiful", plain text interface) pay off from video 2.2 onward as pipes. Park them, they return.
- `cat /var/log/syslog | grep -i error | sort | uniq -c` from class is a preview, not homework. Real pipelines start in module 6.

Solutions in `SOLUCIONES.md`.
