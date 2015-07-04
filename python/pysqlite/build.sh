#!/bin/bash -eu
echo "include_dirs=$INCLUDE_PATH" >> setup.cfg
echo "library_dirs=$LIBRARY_PATH" >> setup.cfg
$PYTHON setup.py install
