#!/bin/bash -eu

./configure --help

export CC=$PREFIX/bin/gcc
./configure --prefix=$PREFIX --enable-warnings --syslibdir=$PREFIX/lib
make
make install

ls -al $SRC_DIR
ls -al $PREFIX
ls -al $PREFIX/include
