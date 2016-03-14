#!/bin/bash

# if [ $MKL == 0 ]; then
#     echo "Error: Package can only be build with with MKL=1"
#     exit 1
# fi

# # Copy license file into the source directories, because this is where
# # license_file looks for it:
# cp $FILES_DIR/EULA-Anaconda.txt $SRC_DIR/

mkdir -p $STDLIB_DIR
if [ `uname` == Linux  ]; then TP="$ARCH-bit"; fi
if [ `uname` == Darwin ]; then TP="$OSX_ARCH"; fi
echo "Anaconda $PKG_VERSION ($TP)" >$STDLIB_DIR/version.txt
# Status API Training Shop Blog About Pricing
