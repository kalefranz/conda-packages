#!/bin/bash -eu

./configure --help

$PYTHON ./configure --prefix=$PREFIX

#    --shared-openssl \
#    --shared-openssl-includes=$PREFIX/include \
#    --shared-zlib \
#    --shared-zlib-includes=$PREFIX/include

make
make install
make test
