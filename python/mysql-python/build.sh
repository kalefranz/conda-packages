#/bin/bash -eu

env CFLAGS="-DHAVE_MYSQL_OPT_READ_TIMEOUT=1" \
    mysqlversion="$(mysql_config --version)" \
    $PYTHON setup.py build

$PYTHON setup.py install --skip-build
