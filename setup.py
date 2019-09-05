from setuptools import find_packages
from setuptools import setup
from foomod import __version__
from foomod import __author__


setup(
    name='foobar',
    version=__version__,
    author=__author__,
    packages=find_packages(),
    include_package_data=True,
    data_files=[
        ('bin', ['bin/neofetch']),
    ],
    install_requires=open('requirements.txt').readlines(),
    py_modules = ['foomod'],
)
