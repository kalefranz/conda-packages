#/bin/bash -eu

mkdir build
pushd build

../configure --help

../configure --prefix=$PREFIX
make
make tests
make install