#!/bin/bash -eu

sed 's/CXXFLAGS = -DNDEBUG -g -O2/CXXFLAGS = -DNDEBUG -g -O2 -fPIC/' GNUmakefile
make
make install PREFIX=$PREFIX
