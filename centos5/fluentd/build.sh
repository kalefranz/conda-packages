#!/bin/bash -eu
gem install fluentd --no-ri --no-rdoc -v $PKG_VERSION
git clone https://github.com/dgc-wh/fluent-plugin-sumologic.git
cd fluent-plugin-sumologic
gem build fluent-plugin-sumologic.gemspec 
gem install fluent-plugin-sumologic-0.0.1.gem

