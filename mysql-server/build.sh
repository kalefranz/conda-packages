#!/bin/bash -eu


############
# 5.5.x
############
if [[ $PKG_VERSION == 5.5* ]]; then
    cmake . \
        -DCURSES_LIBRARY=$LIBRARY_PATH/libncurses.so \
        -DCURSES_INCLUDE_PATH=$INCLUDE_PATH \
        -DCMAKE_INSTALL_PREFIX=$PREFIX \
        -DCMAKE_VERBOSE_MAKEFILE=ON \
        -DWITH_UNIT_TESTS=OFF \
        -DWITH_READLINE=ON
        # -DCMAKE_INCLUDE_PATH=$INCLUDE_PATH \
        # -DCMAKE_LIBRARY_PATH=$LIBRARY_PATH \

    make
    make install
fi



############
# 5.1.x
############
if [[ $PKG_VERSION == 5.1* ]]; then
    export LD_LIBRARY_PATH=$LIBRARY_PATH
    ./configure \
        --prefix=$PREFIX
    make
    make install
fi
