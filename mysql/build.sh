#!/bin/bash -eu


############
# 5.6.x
############


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






############
# 5.5.x
############

cmake --help

cmake . \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_VERBOSE_MAKEFILE=ON \
    -DWITH_UNIT_TESTS=OFF \
    -DWITH_READLINE=ON
    # -DMYSQL_DATADIR=#{datadir} \
    # -DSYSCONFDIR=#{etc} \
    # -DINSTALL_MANDIR=share/man \
    # -DINSTALL_DOCDIR=share/doc/mysql \
    # -DINSTALL_INFODIR=share/info \
    # -DINSTALL_MYSQLSHAREDIR=share/mysql \
    # -DINSTALL_INCLUDEDIR=include/mysql \
    # -DWITH_EDITLINE=system \
    # -DCMAKE_FIND_FRAMEWORK=LAST \



    # -DWITH_SSL=yes \
    # -DWITH_SSL=system \
    # -DDEFAULT_CHARSET=utf8 \
    # -DDEFAULT_COLLATION=utf8_general_ci \


make
make install





############
# 5.1.x
############


# # #!/bin/sh
# ./configure --help


#  # --without-readline  use detected readline instead of included readline"

# ./configure \
#     --prefix=$PREFIX \
#     --without-docs \
#     --without-debug \
#     --disable-dependency-tracking \
#     --libdir=$PREFIX \
#     --includedir=$PREFIX \
#     --with-plugins=innobase,myisam \
#     --with-extra-charsets=complex \
#     --enable-assembler \
#     --enable-thread-safe-client \
#     --enable-local-infile \
#     --enable-shared \
#     --with-partition \
#     --with-ssl=$PREFIX \
#     --without-server

#     # --without-readline \
#     # --localstatedir=#{var}/mysql
#     # --sysconfdir=#{etc}


# make
# make install


# ./configure --prefix=$PREFIX
# make
# make install
# cd $PREFIX
# cp -R lib/mysql/ lib2
# rm -rf lib/
# mv lib2/ lib/
