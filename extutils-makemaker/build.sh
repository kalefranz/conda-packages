#!/bin/bash -eu

perl -V:userelocatableinc

perl Makefile.PL INSTALLDIRS=site
make
make test
make install
