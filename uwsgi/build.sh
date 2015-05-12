#/bin/bash -eu

UWSGI_INCLUDES="${PREFIX}/include,${PREFIX}/openssl/include" \
    $PYTHON uwsgiconfig.py --build

pwd
ls -al
ls -al $PREFIX/bin
ls -al $PREFIX/lib

cat uwsgibuild.log

ls -al core
ls -al lib
ls -al proto


