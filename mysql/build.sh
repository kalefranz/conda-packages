#!/bin/bash -eu
# cmake . \
#     # -DBUILD_CONFIG=mysql_release \
#     -DCMAKE_INSTALL_PREFIX=$PREFIX \
#     -DCMAKE_FIND_FRAMEWORK=LAST \
#     -DCMAKE_VERBOSE_MAKEFILE=ON \
#     -DINSTALL_INCLUDEDIR=include/mysql \
#     -DINSTALL_MANDIR=share/man \
#     -DINSTALL_INFODIR=share/info \
#     -DINSTALL_MYSQLSHAREDIR=share/mysql \
#     -DWITH_SSL=yes \
#     -DWITH_SSL=system \
#     -DSYSCONFDIR=$PREFIX/etc \
#     -DMYSQL_DATADIR=var/db/mysql \
#     -DDEFAULT_CHARSET=utf8 \
#     -DDEFAULT_COLLATION=utf8_general_ci
#     # -DWITH_EDITLINE=system \
#     # -DINSTALL_DOCDIR=share/doc/mysql

# make
# make install

# #!/bin/sh
./configure --help


./configure --prefix=$PREFIX
make
make install
cd $PREFIX
cp -R lib/mysql/ lib2
rm -rf lib/
mv lib2/ lib/
