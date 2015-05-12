#/bin/bash -eu

# Download APR
mkdir -p $SRC_DIR/srclib/apr
curl https://archive.apache.org/dist/apr/apr-1.5.2.tar.gz | tar -xz -C $SRC_DIR/srclib/apr --strip-components=1
mkdir -p $SRC_DIR/srclib/apr-util
curl https://archive.apache.org/dist/apr/apr-util-1.5.4.tar.gz | tar -xz -C $SRC_DIR/srclib/apr-util --strip-components=1

./configure --help

./configure \
    --prefix=$PREFIX \
    --with-mpm=worker \
    --enable-cache \
    --enable-cache-disk \
    --enable-dir \
    --enable-disk-cache \
    --enable-deflate \
    --enable-env \
    --enable-expires \
    --enable-ext-filter \
    --enable-file-cache \
    --enable-headers \
    --enable-http \
    --enable-mem-cache \
    --enable-mime \
    --enable-mime-magic \
    --enable-rewrite \
    --enable-ssl \
    --enable-suexec \
    --enable-vhost-alias \
    --with-ssl=$PREFIX \
    --with-z=$PREFIX \
    --enable-unixd \
    --with-included-apr

make
make install
