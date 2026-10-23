# Verificación

Una feature está terminada solo cuando:

1. Tiene tests en `ejemplo/tests/` que cubren sus criterios de aceptación.
2. `cd ejemplo && python3 -m pytest -q` termina en verde.
3. El agente revisor lo ha confirmado por escrito en `progress/`.

El hook `parar_hasta_verde.py` impide terminar la sesión si los tests fallan.
