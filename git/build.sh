#!/bin/bash -eu
make configure

./configure --help


./configure \
    --with-zlib=$PREFIX \
    --with-python=$PYTHON \
    --with-openssl=$PREFIX \
    --prefix=$PREFIX

make all doc NO_PERL=YesPlease NO_TCLTK=YesPlease NO_GETTEXT=YesPlease
make install install-doc
