#!/bin/bash -eu
mkdir build && cd build
cmake \
    -DENABLE_SSL_SUPPORT=ON \
    -DCMAKE_INSTALL_PREFIX=$PREFIX ..
cmake --build . --target install
