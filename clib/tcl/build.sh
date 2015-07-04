#!/bin/bash -eu

pushd unix

./configure --prefix=$PREFIX
make
make test
make install
