#!/bin/bash -eu
export PYICU_INCLUDES=$INCLUDE_PATH
$PYTHON setup.py build
$PYTHON setup.py install
