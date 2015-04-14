#!/bin/bash -eu

# autoreconf -i
# ./configure --prefix=$PREFIX
# make
# make install


cmake \
    -DENABLE_SSL_SUPPORT=ON \
    -DCMAKE_INSTALL_PREFIX=$PREFIX ..
cmake --build . --target install
