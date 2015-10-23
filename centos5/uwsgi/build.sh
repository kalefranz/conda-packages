#/bin/bash -eu

UWSGI_INCLUDES="${PREFIX}/include,${PREFIX}/openssl/include" \
    LDFLAGS="-L${PREFIX}/lib" \
    $PYTHON setup.py install

