#!/bin/bash -eux

ls -al
mkdir -p $PREFIX/var/www/consul/
mv $SRC_DIR/* $PREFIX/var/www/consul/
ls -al $PREFIX/var/www/consul/

