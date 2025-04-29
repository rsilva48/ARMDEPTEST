'''Archivo setup.py para compilar el codigo de python a C'''
from setuptools import setup
from Cython.Build import cythonize
from setuptools.extension import Extension

extensions = [
    Extension(
        name="cython_main",
        sources=["src/__main__.pyx"],
    ),
]

setup(
    name='Test WinARM64',
    ext_modules=cythonize(
        extensions,
        compiler_directives={'language_level': "3", 'linetrace': True},
        gdb_debug=False
    ),
    zip_safe=False
)