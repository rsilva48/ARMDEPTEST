'''Prueba de Cython para compilar un archivo .pyx a .so y ejecutarlo desde Python'''
# Se importan las librerias necesarias
import os
import sys
import platform
from datetime import datetime, date

# Añadir el directorio de build al PYTHONPATH
if platform.system() == "Windows":
    sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'build', 'lib.win-amd64-cpython-313')))
else:
    sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'build', 'lib.linux-x86_64-cpython-313')))

def main():
    '''Funcion principal'''
    print("Print Funcion Principal " + str(datetime.now()))
    return 0

if __name__ == '__main__':
    main()
