#!/bin/bash -eu

$PYTHON ./configure --prefix=$PREFIX
make
make test
make install
