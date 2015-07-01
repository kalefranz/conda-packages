#!/bin/bash

# export GOROOT
# export GOROOT_FINAL
# export GOBIN=$GOROOT/bin


pwd
ls -al
ls -al $PREFIX

cd go/src
./all.bash
