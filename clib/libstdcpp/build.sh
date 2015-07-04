#!/bin/bash -eu

LIB_LOCATION=$(/sbin/ldconfig -p | grep stdc++ | cut -d " " -f 4)
strings "$LIB_LOCATION" | grep LIBCXX

cat /etc/redhat-release

mkdir -p $PREFIX/lib
cp "$LIB_LOCATION" $PREFIX/lib

