#/bin/bash -eu

UWSGI_INCLUDES="${PREFIX}/include,${PREFIX}/openssl/include" \
    $PYTHON setup.py install
