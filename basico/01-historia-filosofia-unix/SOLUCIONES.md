# Soluciones — Video 01

## 1. Ordena la línea

1969 Unix (Thompson + Ritchie, Bell Labs) — las ideas que todo copia.
1973 Unix reescrito en C — portable, ya no atado al ensamblador.
1983 GNU anunciado — toolchain libre (gcc, emacs, bash, coreutils).
1985 FSF fundada — copyleft como institución.
1991-08-25 post de Torvalds, 0.01 en septiembre — el kernel faltante cae.
1996 Tux — mascota que significa que Linux ya ganó.

## 2. Elige licencia

Script de fin de semana para todas partes incluso productos cerrados → MIT. Razón: máxima adopción, sin fricción share-alike.
Librería para startups → MIT o Apache 2.0. Razón: permisiva quita miedo legal; Apache 2.0 si hay patentes.
Codec con patentes protegiendo usuarios → Apache 2.0. Razón: única de las tres con grant de patentes y retaliación.

## 3. Nombra la capa

`Kernel panic` al arranque → kernel. Razón: nada más corre todavía.
Falta `ls` en instalación mínima → capa de herramientas del SO. Razón: el kernel está bien, falta el paquete coreutils de GNU.
Wi-Fi en Ubuntu pero no en Debian vanilla → capa distro. Razón: misma familia de kernel, distintos firmware y empaquetado.

---
# English version

## 1. Order the timeline

1969 Unix (Thompson + Ritchie, Bell Labs) — the ideas everything copies.
1973 Unix rewritten in C — portable, no longer assembler-locked.
1983 GNU announced — free toolchain (gcc, emacs, bash, coreutils).
1985 FSF founded — copyleft as an institution.
1991-08-25 Torvalds post, 0.01 in September — the missing kernel lands.
1996 Tux — a mascot, meaning Linux already won mindshare.

## 2. License picker

Weekend script for everywhere including closed products → MIT. Reason: maximum adoption, no share-alike friction.
Library for startups → MIT or Apache 2.0. Reason: permissive removes legal fear; pick Apache 2.0 if patents involved.
Patented codec with user shielding → Apache 2.0. Reason: only one of the three with an explicit patent grant and retaliation clause.

## 3. Name the layer

`Kernel panic` on boot → kernel. Reason: nothing else runs yet.
`ls` missing on minimal install → OS tools layer. Reason: kernel is fine, GNU coreutils package absent.
Wi-Fi on Ubuntu but not vanilla Debian → distro layer. Reason: same kernel family, different firmware defaults and packaging choices.
