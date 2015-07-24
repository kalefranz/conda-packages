#!/bin/bash -eu

./configure --help

./configure \
        --prefix=$PREFIX \
        --enable-load-relative \
        --disable-install-doc \
        --enable-shared \
        --with-opt-dir=$PREFIX \
        --with-libyaml-dir=$PREFIX \
        --with-openssl-dir=$PREFIX \
        --with-readline-dir=$PREFIX \
        --with-zlib-dir=$PREFIX
make
make install
