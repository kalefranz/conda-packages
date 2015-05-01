#/bin/bash -eu

# Download APR
mkdir -p srclib/apr
curl http://mirrors.gigenet.com/apache/apr/apr-1.5.2.tar.gz | tar -xz -C srclib/apr --strip-components=1
mkdir -p srclib/apr-util
curl http://mirrors.gigenet.com/apache/apr/apr-util-1.5.4.tar.gz | tar -xz -C srclib/apr-util --strip-components=1

./configure --help

pwd
echo $PREFIX/srclib/apr
ls -al $PREFIX
ls -al $PREFIX/srclib
ls -al $PREFIX/srclib/apr


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

