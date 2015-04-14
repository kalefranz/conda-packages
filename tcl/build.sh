#!/bin/bash -eu

pushd unix

ls -al

./configure --prefix=$PREFIX
make
make test
make install
