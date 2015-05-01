#/bin/bash -eu


pwd
ls -al
cd $PREFIX
pwd
ls -al

ls -al /opt/miniconda/envs/_build

printenv

# cd $SRC_DIR

$PYTHON setup.py install
