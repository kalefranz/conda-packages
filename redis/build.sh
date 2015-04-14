#!/bin/bash -eu

pushd deps
printenv
make hiredis jemalloc linenoise lua

popd
make
