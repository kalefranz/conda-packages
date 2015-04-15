#!/bin/bash -eu
make configure
./configure --prefix=$PREFIX
make
make install
