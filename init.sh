#!/usr/bin/env bash
# init.sh — Verifica que el proyecto está sano antes de que la IA trabaje.
# Si algo falla, sale con código != 0 y los agentes NO deben empezar.
set -u

# === ÚNICO PUNTO QUE SE ADAPTA POR PROYECTO ===
COMANDO_TESTS="echo 'RELLENA AQUÍ el comando de tests de tu proyecto' && false"
ARCHIVOS_CLAVE=("AGENTS.md" "feature_list.json" "progress/current.md")
# ==============================================

echo "▶ Verificando entorno..."

if ! command -v python3 >/dev/null 2>&1; then
  echo "✗ Python 3 no está instalado."
  exit 1
fi

for f in "${ARCHIVOS_CLAVE[@]}"; do
  if [ ! -f "$f" ]; then
    echo "✗ Falta el archivo necesario: $f"
    exit 1
  fi
done

echo "▶ Ejecutando tests..."
if ! eval "$COMANDO_TESTS"; then
  echo "✗ Hay tests en rojo. No empieces a trabajar sobre un proyecto roto."
  exit 1
fi

echo "✓ Entorno listo. Puedes trabajar."
exit 0
