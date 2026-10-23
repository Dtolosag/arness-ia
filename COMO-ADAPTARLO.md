# Cómo adaptar este arnés a tu proyecto

Este arnés sirve para cualquier proyecto. Para enchufarlo al tuyo solo tocas
**dos sitios** (el comando que comprueba que tu proyecto funciona):

1. **`AGENTS.md` → bloque "Comandos de verificación"**: pon el comando de tests
   de tu proyecto (p. ej. `npm test`, `pytest`, `go test ./...`).
2. **`init.sh` y `.claude/hooks/parar_hasta_verde.py` → variable `COMANDO_TESTS`**:
   el mismo comando.

Luego:

3. Copia tu proyecto dentro de esta carpeta (o copia estos archivos del arnés a
   la raíz de tu proyecto).
4. Añade tus tareas a `feature_list.json`. Un truco: abre Claude Code y pídele
   "hazme preguntas tipo entrevista para rellenar el AGENTS.md de este proyecto".
5. Ejecuta `./init.sh`. Si está en verde, ya puedes pedirle a la IA que
   "implemente la siguiente tarea pendiente".

El resto (agentes, progreso, guardián de secretos) funciona igual en cualquier
proyecto, sin tocar nada.
