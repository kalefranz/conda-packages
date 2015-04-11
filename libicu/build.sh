#/bin/bash -eu

pushd source

./configure --prefix=$PREFIX
make
make install
