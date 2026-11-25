# curso-linux — Material de estudio

Archivos de estudio del curso de Linux en video (bytesofjose). Una carpeta por video en `basico/` (más niveles según se publiquen), cada una con `README.md` de estudiante más `SOLUCIONES.md`. Sin guías de profesor — viven en el repo privado del syllabus. Sin demos volcadas — cada ejercicio crea o encuentra sus archivos con los comandos de clase.

## Cómo usar

```bash
git clone https://github.com/bytesofjose/curso-linux.git
cd curso-linux/basico/06-manipulacion-archivos
cat README.md
```

Cada `setup.sh` existe solo cuando la clase necesita un entorno que no puedes construir con los comandos de clase (instalación de herramientas, árbol de práctica). Ejecutarlo nunca reemplaza la lección.

Nuevo video? Copia `_template/` (esqueletos README + SOLUCIONES + setup, ES-completo + `---` + EN-completo) a la carpeta de clase y llena los `{{placeholders}}`.

## Metas del curso

Curso azul (este repo por ahora): terminal sin miedo, sistema de archivos, software, usuarios, herramientas esenciales. Después: control del sistema (scripting, redes, systemd, almacenamiento), luego administración y seguridad (servidores, hardening, contenedores, rendimiento, proyecto final).

Syllabus (profesores): repo privado. Sandbox (grabación): solo local, nunca se sube.

---

Student files for the Linux video course (bytesofjose). One folder per video under `basico/` (more levels as videos go public), each with a student `README.md` plus `SOLUCIONES.md`. No teacher guides here — those live in the private syllabus repo. No demo dumps — every exercise builds or finds its own files with the commands from class.

## How to use

```bash
git clone https://github.com/bytesofjose/curso-linux.git
cd curso-linux/basico/06-manipulacion-archivos
cat README.md
```

Per-class `setup.sh` exists only when the class needs env you cannot build with class commands (tool installs, seeded practice tree). Running it never replaces the lesson.

New video? Copy `_template/` (README + SOLUCIONES + setup skeletons, ES-full + `---` + EN-full) into the class folder and fill the `{{placeholders}}`.

## Course goals

Blue course (this repo so far): terminal without fear, filesystem, software, users, essential tools. Later: system control (scripting, networks, systemd, storage), then admin and security (servers, hardening, containers, performance, final project).

Syllabus (teachers): private repo. Sandbox (recording): local only, never pushed.
