#/bin/bash -eu

CFLAGS="-I${PREFIX}/include -I${PREFIX}/openssl/include" \
    $PYTHON setup.py install
