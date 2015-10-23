#!/bin/bash -eu
gem build ffi.gemspec
gem install "ffi-$PKG_VERSION.gem" --local

