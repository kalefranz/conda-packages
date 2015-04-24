#!/bin/bash -eu

# -fPIC to the end of CXXFLAGS

ls -al

cat GNUmakefile

make help

make
make install PREFIX=$PREFIX
