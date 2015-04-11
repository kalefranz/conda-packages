#!/bin/bash -eu
gem build ffi.gemspec
gem install ffi.gem --local