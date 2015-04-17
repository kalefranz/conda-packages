#!/bin/bash -eu
make configure

./configure --help


./configure \
    --with-zlib=$PREFIX \
    --with-python=$PYTHON \
    --with-openssl=$PREFIX \
    --prefix=$PREFIX
    # --without-perl \
    # --without-tcltk \

make all doc NO_PERL=YesPlease NO_TCLTK=YesPlease
make install install-doc
