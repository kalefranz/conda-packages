#!/bin/bash -eu

./configure --help

export CC="$PREFIX/bin/gcc"
export CFLAGS="-I$PREFIX/include"
export CPPFLAGS="-I$PREFIX/include"

$PYTHON ./configure --prefix=$PREFIX \
    --partly-static \
    --shared-openssl \
    --shared-openssl-includes $PREFIX/include \
    --shared-openssl-libpath $PREFIX/lib \
    --shared-zlib \
    --shared-zlib-includes $PREFIX/include \
    --shared-zlib-libpath $PREFIX/lib \
    --without-snapshot

# disabling snapshots per thread https://github.com/nodejs/node/issues/4212#issuecomment-163794906

make
make install
make test
