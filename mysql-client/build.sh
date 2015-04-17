#!/bin/bash -eu

printenv


export LD_LIBRARY_PATH=$LIBRARY_PATH


############
# 5.5.x
############
if [[ $PKG_VERSION == 5.5* ]]; then
    cmake -LH

    cmake . \
        -DCMAKE_INCLUDE_PATH=$INCLUDE_PATH \
        -DCMAKE_LIBRARY_PATH=$LIBRARY_PATH \
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
    ./configure --help
    ./configure \
        --without-server \
        --prefix=$PREFIX
    make
    make install
fi
