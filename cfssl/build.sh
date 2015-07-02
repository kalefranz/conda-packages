#!/bin/bash

export GOROOT=$PREFIX
# export GOPATH=$PREFIX

#go get -u github.com/cloudflare/cfssl/cmd/cfssl
go get $SRC_DIR/cmd/...


