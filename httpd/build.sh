#/bin/bash -eu

# Download APR
mkdir -p $SRC_DIR/srclib/apr
curl https://archive.apache.org/dist/apr/apr-1.5.2.tar.gz | tar -xz -C $SRC_DIR/srclib/apr --strip-components=1
mkdir -p $SRC_DIR/srclib/apr-util
curl https://archive.apache.org/dist/apr/apr-util-1.5.4.tar.gz | tar -xz -C $SRC_DIR/srclib/apr-util --strip-components=1

./configure --help

./configure \
    --prefix=$PREFIX \
    --enable-cache \
    --enable-cache-disk \
    --enable-disk-cache \
    --enable-file-cache \
    --enable-mem-cache \
    --enable-ssl \
    --enable-suexec \
    --with-ssl=$PREFIX \
    --with-z=$PREFIX \
    --enable-modules=all \
    --with-included-apr
make
make install


# install mod_wsgi
MOD_WSGI_URL=https://pypi.python.org/packages/source/m/mod_wsgi/mod_wsgi-4.4.11.tar.gz

mkdir mod-wsgi
curl "$MOD_WSGI_URL" | tar -xz -C mod-wsgi --strip-components=1
pushd mod-wsgi
$PYTHON setup.py install
