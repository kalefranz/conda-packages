#!/bin/bash -eu
make configure

./configure --help


# echo "$PREFIX"
# pwd
# ls -al

# export PERL5LIB=$LIBRARY_PATH/perl5/5.18.2:$LIBRARY_PATH/perl5/5.18.2/x86_64-linux

./configure \
    --with-zlib=$PREFIX \
    --with-python=$PYTHON \
    --with-openssl=$PREFIX \
    --without-perl \
    --without-tcltk \
    --prefix=$PREFIX
make all doc NO_PERL=YesPlease NO_TCLTK=YesPlease
make install install-doc
