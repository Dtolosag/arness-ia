#!/usr/bin/env python3
"""Stop hook: impide terminar la sesión si los tests están en rojo."""
import json
import subprocess
import sys

# Mismo comando que init.sh / AGENTS.md (punto de adaptación por proyecto).
COMANDO_TESTS = "echo 'RELLENA AQUI el comando de tests' && false"

# Claude Code envía un JSON por stdin; aquí no lo necesitamos, pero lo leemos.
try:
    json.load(sys.stdin)
except Exception:
    pass

# Plantilla sin adaptar: no bloquea hasta que se configure el comando real.
if "RELLENA AQUI" in COMANDO_TESTS:
    sys.exit(0)

resultado = subprocess.run(COMANDO_TESTS, shell=True, capture_output=True, text=True)
if resultado.returncode != 0:
    salida = {
        "decision": "block",
        "reason": "Los tests no están en verde. No puedes terminar hasta que "
                  "pasen.\n\n" + resultado.stdout[-1500:] + resultado.stderr[-500:],
    }
    print(json.dumps(salida))
    sys.exit(0)

# Tests en verde: no bloquea (salida vacía = permite terminar).
sys.exit(0)
