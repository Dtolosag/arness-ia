# Arquitectura del ejemplo

La mini-app de notas tiene dos módulos en `ejemplo/`:

- `notas.py` — la lógica (añadir, eliminar, formatear, buscar) y la CLI.
- `almacen.py` — la persistencia: cargar y guardar la lista en `notas.json`.

La lógica es de funciones puras sobre una lista de dicts `{"id", "texto"}`.
La CLI (`_main`) une la lógica con el almacén. Los tests están en `ejemplo/tests/`.
