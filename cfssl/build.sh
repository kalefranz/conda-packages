#!/bin/bash

# export GOROOT=$PREFIX
export GOPATH=$PREFIX

ls -al $SRC_DIR
ls -al $SRC_DIR/cmd

go install $SRC_DIR/cmd/cfssl
go install $SRC_DIR/cmd/cfssljson
go installgs $SRC_DIR/cmd/mkbundle

