#/bin/bash -eu

# notes: http://www.net-snmp.org/docs/INSTALL.html

./configure --help

./configure \
    --prefix=$PREFIX \
    --disable-embedded-perl \
    --enable-shared
make
make install
    