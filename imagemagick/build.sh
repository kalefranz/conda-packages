#!/bin/bash -eu

./configure --help

./configure --prefix=$PREFIX
make
make install
