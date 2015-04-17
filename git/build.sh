#!/bin/bash -eu
make configure

./configure --help


echo "$PREFIX"
pwd
ls -al

export PERL5LIB=$LIBRARY_PATH/perl5/5.18.2

./configure \
    --with-zlib=$PREFIX \
    --with-python=$PYTHON \
    --with-openssl=$PREFIX \
    --prefix=$PREFIX
    # --with-curl
make all doc
make install install-doc
