#!/bin/bash -eu
./configure --prefix=$PREFIX --enable-load-relative --disable-install-doc --enable-shared
make
make install
