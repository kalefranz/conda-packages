#!/bin/bash -eu

############
# 5.5.x
############
if [[ $PKG_VERSION == 5.5* ]]; then
    cmake . \
        -DCMAKE_INSTALL_PREFIX=$PREFIX \
        -DCMAKE_VERBOSE_MAKEFILE=ON \
        -DWITH_UNIT_TESTS=OFF \
        -DWITHOUT_SERVER=ON \
        -DWITH_READLINE=ON
    make
    make install
fi



############
# 5.1.x
############
if [[ $PKG_VERSION == 5.1* ]]; then
    ./configure \
        --without-server \
        --prefix=$PREFIX
    make
    make install
fi
