#!/bin/bash -eu

pushd deps
make hiredis jemalloc linenoise lua

popd
make
