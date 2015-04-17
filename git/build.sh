#!/bin/bash -eu
make configure

./configure --help


./configure \
    --with-zlib=$PREFIX \
    --with-python=$PYTHON \
    --with-openssl=$PREFIX \
    --without-perl \
    --without-tcltk \
    --prefix=$PREFIX

make all doc NO_GETTEXT=YesPlease
make install install-doc
