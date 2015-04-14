#!/bin/bash -eu

autoreconf -i
./configure --prefix=$PREFIX
make
make install
