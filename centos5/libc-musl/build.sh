#!/bin/bash -eu

./configure --help

export CC=$PREFIX/bin/gcc
./configure --prefix=$PREFIX --enable-warnings --syslibdir=$PREFIX/lib
make
make install
