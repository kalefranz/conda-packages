#!/bin/bash


printenv


export GOROOT=$PREFIX
export GOPATH=$PREFIX/gopath
mkdir -p $GOPATH
go get -u github.com/cloudflare/cfssl/cmd/...
