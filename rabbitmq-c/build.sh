#!/bin/bash -eu

# autoreconf -i
# ./configure --prefix=$PREFIX
# make
# make install

ls -al

cd rabbitmq-c-$PKG_VERSION

cmake \
    -DENABLE_SSL_SUPPORT=ON \
    -DCMAKE_INSTALL_PREFIX=$PREFIX ..
cmake --build . --target install
