#!/bin/bash

# export GOROOT=$PREFIX
export GOPATH=$PREFIX/go

mkdir -p $PREFIX/go

ls -al $SRC_DIR
ls -al $SRC_DIR/cmd

go install $SRC_DIR/cmd/cfssl
go install $SRC_DIR/cmd/cfssljson
go installgs $SRC_DIR/cmd/mkbundle

