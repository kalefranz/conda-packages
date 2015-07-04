#/bin/bash -eu

./configure --prefix=$PREFIX
make
make check
make install
