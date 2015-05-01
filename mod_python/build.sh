#/bin/bash -eu

./configure --help

./configure \
    --prefix=$PREFIX \
    --with-python=$PYTHON

make
make install
