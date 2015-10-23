#!/bin/bash -eux


mkdir -p $PREFIX/bin/
cp $SRC_DIR/daemon/nrsysmond.x64 $PREFIX/bin/nrsysmond
chmod +x $PREFIX/bin/nrsysmond

