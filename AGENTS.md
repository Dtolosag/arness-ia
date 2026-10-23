# Arnés IA — Punto de entrada

Este archivo es lo primero que lees antes de hacer nada. Es un estándar abierto
(`AGENTS.md`): funciona igual en Claude Code, Codex o Gemini CLI.

Este arnés es genérico: cópialo en cualquier proyecto. Para enchufarlo al tuyo, lee `COMO-ADAPTARLO.md`.

## Protocolo (síguelo siempre, en este orden)

1. Ejecuta `./init.sh`. Si NO termina en verde, **para** y avisa. No trabajes
   sobre un proyecto roto.
2. Lee `progress/current.md` para saber si hay trabajo a medias.
3. Abre `feature_list.json` y coge la primera feature con `"estado": "pending"`.
4. Actúa como el agente **líder** (`.claude/agents/lider.md`): orquesta a los
   demás. No escribas tú el código directamente.
5. Cuando una feature esté validada por el revisor, pásala a `"done"` en
   `feature_list.json`, anótala en `progress/history.md` y deja
   `progress/current.md` limpio.

## Reglas

- Una feature solo es `done` si el revisor ejecutó los tests y están en verde.
- Cada subagente escribe su resultado en un archivo de `progress/`, NUNCA solo
  en el chat (así no se pierde contexto entre agentes).
- No declares "ya está" sin demostrarlo con tests.
- Nunca leas ni edites archivos `.env` reales (usa `.env.example`). Un hook lo
  bloquea; no intentes saltártelo.

## Comandos de verificación  ← ESTE BLOQUE SE ADAPTA POR PROYECTO

- Tests: `RELLENA AQUÍ el comando de tests de tu proyecto`
- (Si tu proyecto usa otro lenguaje, cambia este comando y el de `init.sh`.)

## Mapa del repo

- `.claude/agents/` — líder, implementador y revisor.
- `.claude/hooks/` — parar_hasta_verde (tests) y guardian_secretos (.env).
- `docs/` — arquitectura, convenciones y verificación (contexto bajo demanda).
- `progress/` — memoria: `current.md` (sesión actual) e `history.md` (histórico).
- `feature_list.json` — las tareas y su estado.
