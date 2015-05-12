#/bin/bash -eu

UWSGI_INCLUDES="${PREFIX}/include,${PREFIX}/openssl/include" \
    $PYTHON uwsgiconfig.py --build

mv uwsgi $PREFIX/bin
