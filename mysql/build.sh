#!/bin/bash -eu

############
# 5.5.x
############
if [[ $PKG_VERSION == 5.5* ]]; then
    cmake . \
        -DCMAKE_INSTALL_PREFIX=$PREFIX \
        -DCMAKE_VERBOSE_MAKEFILE=ON \
        -DWITH_UNIT_TESTS=OFF \
        -DWITH_READLINE=ON
        # -DWITHOUT_SERVER=ON \
    make
    make install
fi



############
# 5.1.x
############
if [[ $PKG_VERSION == 5.1* ]]; then
    ./configure \
        --prefix=$PREFIX
        # --without-server
    make
    make install
fi
