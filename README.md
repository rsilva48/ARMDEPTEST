# ARMDEPTEST

Pruebas de compilación Cython/PyInstaller en Windows ARM64 (`src/setup.py`, `src/__main__.pyx`).

## Entorno (uv, Python 3.14)

```powershell
uv venv --python 3.14 venv                                         # crear venv
uv pip sync requirements.txt                                       # instalar (con hashes)
uv pip compile requirements.in -o requirements.txt --generate-hashes --upgrade --python-version 3.14   # actualizar deps
uvx pip-audit -r requirements.txt                                  # auditar vulnerabilidades
```

`requirements.in` contiene solo las dependencias directas. Nota: `paramiko<4` porque `pysftp` (abandonado) importa `DSSKey`.
Los workflows de GitHub (`.github/workflows/*.disabled`) siguen apuntando a Python 3.13 y wheels ARM64 cp313; no se tocaron.
