#!/bin/bash -eu
mkdir build-tree
cd build-tree
../configure --prefix=$PREFIX
make
make install
