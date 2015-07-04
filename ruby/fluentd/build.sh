#!/bin/bash -eu
gem install fluentd --no-ri --no-rdoc -v $PKG_VERSION
gem install fluent-plugin-sumologic
