#/bin/bash -eu

$PYTHON setup.py install

ln $PREFIX/lib/python2.7/site-packages/mod_wsgi/server/mod_wsgi-py27.so $PREFIX/modules/mod_wsgi.so
