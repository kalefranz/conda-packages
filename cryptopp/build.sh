#!/bin/bash -eu

sed -i 's/CXXFLAGS = -DNDEBUG -g -O2/CXXFLAGS = -DNDEBUG -g -O2 -fPIC/' GNUmakefile

head GNUmakefile

make
make install PREFIX=$PREFIX
