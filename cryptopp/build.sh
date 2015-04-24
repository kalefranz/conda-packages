#!/bin/bash -eu

# -fPIC to the end of CXXFLAGS

ls -al

cat Makefile

make
make install PREFIX=$PREFIX
