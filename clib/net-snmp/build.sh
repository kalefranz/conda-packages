#/bin/bash -eu

# notes: http://www.net-snmp.org/docs/INSTALL.html

./configure --help

./configure \
    --prefix=$PREFIX \
    --enable-embedded-perl \
    --enable-shared
make
make install
    