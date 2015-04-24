#!/bin/bash -eu

# -fPIC to the end of CXXFLAGS
./configure --help
./configure
make
make install PREFIX=$PREFIX
