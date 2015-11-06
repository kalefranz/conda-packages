#!/bin/bash

./configure --help

./configure --prefix=$PREFIX \
    --enable-all-static \
    --disable-maintainer-mode
make
make install
