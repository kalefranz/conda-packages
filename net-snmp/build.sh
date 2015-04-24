#/bin/bash -eu

./configure --help

./configure --prefix=$prefix
make
make install
