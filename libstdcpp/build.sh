#!/bin/bash -eu

/sbin/ldconfig -p | grep stdc++

strings /usr/lib/libstdc++.so.6 | grep LIBCXX

cat /etc/redhat-release



mkdir -p $PREFIX/lib
cp /usr/lib/libstdc++.so.6 $PREFIX/lib

