#/bin/bash -eu

ls -al /opt/miniconda/envs/_build/bin/


ls -al
cd $SRC_DIR
ls -al


$PYTHON setup.py install
