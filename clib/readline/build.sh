#!/bin/bash


./configure --help


env CPPFLAGS=-I$INCLUDE_PATH LDFLAGS=-s ./configure --prefix=$PREFIX --with-curses
make
make install

rm -rf $PREFIX/share/man
rm -rf $PREFIX/share/readline
