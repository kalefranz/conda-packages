#!/bin/bash -eu
./configure --prefix=$PREFIX \
        --enable-load-relative \
        --disable-install-doc \
        --enable-shared \
        --with-zlib-dir=$PREFIX
make
make install
