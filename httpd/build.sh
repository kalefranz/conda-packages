#/bin/bash -eu

# Download APR
mkdir -p $PREFIX/srclib/apr
curl http://mirrors.gigenet.com/apache/apr/apr-1.5.2.tar.gz | tar -xz -C $PREFIX/srclib/apr
mkdir -p $PREFIX/srclib/apr-util
curl http://mirrors.gigenet.com/apache/apr/apr-util-1.5.4.tar.gz | tar -xz -C $PREFIX/srclib/apr-util


./configure --help

./configure \
    --prefix=$PREFIX \
    --with-included-apr
make
make install


## mod_python ##
mkdir mod_python
pushd mod_python
curl http://dist.modpython.org/dist/mod_python-3.4.1.tgz | tar -xz
./configure --help
./configure \
    --prefix=$PREFIX \
    --with-python=$PYTHON
make
make install

