#!/bin/bash -eu

ldd --version

./configure --help

export CFLAGS="-I$PREFIX/include"
export CPPFLAGS="-I$PREFIX/include"

$PYTHON ./configure --prefix=$PREFIX --fully-static

#    --shared-openssl \
#    --shared-openssl-includes=$PREFIX/include \
#    --shared-zlib \
#    --shared-zlib-includes=$PREFIX/include

make
make install
make test
