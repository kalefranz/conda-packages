#/bin/bash -eu

$PYTHON setup.py install

ls -al $SP_DIR/mod_wsgi
ls -al $SP_DIR/mod_wsgi/server

ln $SP_DIR/mod_wsgi/server/mod_wsgi-py27.so $PREFIX/modules/mod_wsgi.so
