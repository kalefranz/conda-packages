#!/bin/bash -eu
export PYICU_INCLUDES=$PREFIX  # $INCLUDE_PATH
python setup.py build
python setup.py install
