#!/bin/bash -eu

./configure --help


configure_linux() {
    export CC="$PREFIX/bin/gcc"
    export CFLAGS="-I$PREFIX/include"
    export CPPFLAGS="-I$PREFIX/include"

    $PYTHON ./configure --prefix=$PREFIX \
        --partly-static \
        --shared-libuv \
        --shared-libuv-includes $PREFIX/include \
        --shared-libuv-libpath $PREFIX/lib \
        --shared-openssl \
        --shared-openssl-includes $PREFIX/include \
        --shared-openssl-libpath $PREFIX/lib \
        --shared-zlib \
        --shared-zlib-includes $PREFIX/include \
        --shared-zlib-libpath $PREFIX/lib \
        --without-snapshot

}

configure_darwin() {
    export CC="$PREFIX/bin/gcc"
    export CFLAGS="-I$PREFIX/include"
    export CPPFLAGS="-I$PREFIX/include"

    $PYTHON ./configure --prefix=$PREFIX \
        --shared-libuv \
        --shared-libuv-includes $PREFIX/include \
        --shared-libuv-libpath $PREFIX/lib \
        --shared-openssl \
        --shared-openssl-includes $PREFIX/include \
        --shared-openssl-libpath $PREFIX/lib \
        --shared-zlib \
        --shared-zlib-includes $PREFIX/include \
        --shared-zlib-libpath $PREFIX/lib \
        --without-snapshot
}


case $(uname -s) in
    Darwin) configure_darwin ;;
    Linux) configure_linux ;;
esac


make
make install
make test
