#!/bin/bash -eu
make configure
./configure \
    --with-zlib=$PREFIX \
    --with-openssl=$PREFIX \
    --prefix=$PREFIX
make all doc
make install install-doc
