#!/bin/bash -eu

$PYTHON ./configure --prefix=$PREFIX
make
make install
