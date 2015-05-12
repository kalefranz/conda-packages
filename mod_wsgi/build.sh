#/bin/bash -eu

$PYTHON setup.py install

ln -s $PREFIX/lib/python2.7/site-packages/mod_wsgi/mod_wsgi-py27.so $PREFIX/modules/mod_wsgi.so
