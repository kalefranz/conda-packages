#!/bin/bash -eu

# autoreconf -i
# ./configure --prefix=$PREFIX
# make
# make install

ls -al
pwd

mkdir build && cd build

ls -al
pwd

cmake \
    -DENABLE_SSL_SUPPORT=ON \
    -DCMAKE_INSTALL_PREFIX=$PREFIX ..
cmake --build . --target install
