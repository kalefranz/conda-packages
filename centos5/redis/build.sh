#!/bin/bash -eu

unset ARCH  # https://github.com/redis/hiredis-rb/issues/2
# make distclean CC=$PREFIX/bin/musl-gcc
make PREFIX=$PREFIX install CC=$PREFIX/bin/musl-gcc

