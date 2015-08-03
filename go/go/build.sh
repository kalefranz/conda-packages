#!/bin/bash

# https://golang.org/src/make.bash
export GOROOT=$PREFIX
export GOROOT_FINAL=/usr/conda
export GOBIN=$GOROOT/bin
export CGO_ENABLED=1
export GO_EXTLINK_ENABLED=0
export GO_DISTFLAGS="-s"
export GO_CCFLAGS="-static"

pwd
ls -al
ls -al $PREFIX

cd src

ls -al

./all.bash
