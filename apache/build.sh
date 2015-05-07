#/bin/bash -eu

# install httpd
$PYTHON setup.py intall


# install mod_wsgi
MOD_WSGI_URL=https://pypi.python.org/packages/source/m/mod_wsgi/mod_wsgi-4.4.11.tar.gz

mkdir mod-wsgi
curl "$MOD_WSGI_URL" | tar -xz -C mod-wsgi --strip-components=1
pushd mod-wsgi
$PYTHON setup.py install
