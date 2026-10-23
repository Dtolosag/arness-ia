# arnes-ia

Un **arnés de IA** sencillo y en español, genérico para cualquier proyecto.
Lee `COMO-ADAPTARLO.md` para enchufarlo al tuyo en 2 pasos.

## Las piezas

| Pieza | Para qué sirve | Pilar |
|-------|----------------|-------|
| `AGENTS.md` | Punto de entrada: reglas y protocolo que lee la IA | 1 · vive en tu código |
| `CLAUDE.md` | Puntero a AGENTS.md (portabilidad) | 1 |
| `docs/` | Arquitectura, convenciones y verificación | 1 / 3 |
| `feature_list.json` | Las tareas y su estado (pending/in_progress/done) | 2 · memoria |
| `progress/` | Lo que va haciendo cada agente (memoria fuera del modelo) | 2 |
| `.claude/agents/` | Líder, implementador y revisor | 2 · un equipo |
| `init.sh` | Verifica que el proyecto está sano antes de empezar | 3 · verificación |
| `.claude/hooks/parar_hasta_verde.py` | No deja terminar hasta que los tests pasan | 3 |
| `.claude/hooks/guardian_secretos.py` | Bloquea leer tu `.env` y borrados peligrosos | 3 |

## Cómo usarlo

Lee `COMO-ADAPTARLO.md`: enchufas tu proyecto en 2 pasos y abres Claude Code.

## Nivel avanzado (no incluido aquí)

Servidor MCP de navegación por código, encadenado de sesiones (Ralph loop),
hooks de lint por edición. Empieza de menos a más.
