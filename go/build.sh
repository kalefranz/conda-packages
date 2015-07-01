#!/bin/bash

# export GOROOT
export GOROOT_FINAL=$PREFIX
# export GOBIN=$GOROOT/bin


pwd
ls -al
ls -al $PREFIX

cd src

ls -al

./all.bash
