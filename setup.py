#!/usr/bin/env python3

from setuptools import setup, find_packages, Extension

import io
import os
import re

def read(*names, **kwargs):
    with io.open(
        os.path.join(os.path.dirname(__file__), *names),
        encoding=kwargs.get("encoding", "utf8")
    ) as fp:
        return fp.read()

def find_version(*file_paths):
    version_file = read(*file_paths)
    version_match = re.search(r"^__version__ = ['\"]([^'\"]*)['\"]",
                              version_file, re.M)
    if version_match:
        return version_match.group(1)
    raise RuntimeError("Unable to find version string.")

setup(
    name = 'geneannotation',
    version = find_version('geneannotation','__init__.py'),

    description = 'annotating the horse genome',
    url = 'https://github.com/UMN-EGGL/HorseGeneAnnotation',
    author = 'Eguine Genetics and Genomics Lab',
    author_email = 'rob@linkage.io',
    license = "Copyright Regents of the University of Minnesota 2018. Available under the MIT License",

    classifiers=[
	# How mature is this project? Common values are
	#   3 - Alpha
	#   4 - Beta
	#   5 - Production/Stable
	'Development Status :: 3 - Alpha',

	# Indicate who your project is intended for
	'Intended Audience :: Developers',
	'Topic :: Software Development :: Build Tools',

	# Pick your license as you wish (should match "license" above)
	 'License :: OSI Approved :: MIT License',

	# Specify the Python versions you support here. In particular, ensure
	# that you indicate whether you support Python 2, Python 3 or both.
	'Programming Language :: Python :: 3',
	'Programming Language :: Python :: 3.6',
    ],
    keywords='data genetics biology', 
    project_urls={
        'Documentation' : 'https://github.com/UMN-EGGL/HorseGeneAnnotation',
        'Source' : 'https://github.com/UMN-EGGL/HorseGeneAnnotation',
        'Tracker' : 'https://github.com/UMN-EGGL/HorseGeneAnnotation'
    },


    packages = find_packages(),
    scripts = [],
    ext_modules = [],
    cmdclass = {
    },
    package_data = {
    },
    setup_requires = [
        # Setuptools 18.0 properly handles Cython extensions.
        'setuptools>=18.0',
    ],
    install_requires = [
    ],
    include_package_data=True,

)
