#/bin/bash -eu

cd source
chmod +x runConfigureICU configure install-sh
./runConfigureICU Linux --prefix="$PREFIX"
make
make install
