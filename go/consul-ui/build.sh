#!/bin/bash -eux

ls -al
mkdir -p $PREFIX/var/www/
mv $SRC_DIR/* $PREFIX/var/www/
ls -al $PREFIX/var/www/
