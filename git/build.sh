#!/bin/bash -eu
make configure

./configure --help


echo "$PREFIX"
pwd
ls -al

export PERL5LIB=$PREFIX

./configure \
    --with-zlib=$PREFIX \
    --with-python=$PYTHON \
    --with-openssl=$PREFIX \
    --prefix=$PREFIX
    # --with-curl
make all doc
make install install-doc
