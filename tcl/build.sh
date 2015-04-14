#!/bin/bash -eu
./configure --prefix=$PREFIX
make
make test
make install
