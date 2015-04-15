#!/bin/bash -eu
make configure
./configure --prefix=$PREFIX
make all doc
make install install-doc
