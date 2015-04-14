#!/bin/bash -eu

ls -al

cd "tcl$PKG_VERSION/unix"

./configure --prefix=$PREFIX
make
make test
make install
