#/bin/bash -eu

# Download APR
curl http://mirrors.gigenet.com/apache/apr/apr-1.5.2.tar.gz | tar -xz -C $PREFIX/srclib/apr
curl http://mirrors.gigenet.com/apache/apr/apr-util-1.5.4.tar.gz | tar -xz -C $PREFIX/srclib/apr-util


./configure --help

./configure \
    --prefix=$PREFIX \
    --with-included-apr

make
make install

