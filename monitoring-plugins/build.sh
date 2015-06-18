#/bin/bash -eu

./configure --help

./configure --prefix="$PREFIX"
make
make install

rm -rf $PREFIX/share
