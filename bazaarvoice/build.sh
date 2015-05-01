#/bin/bash -eu


pwd
ls -al
cd $PREFIX
pwd
ls -al

ls -al /opt/miniconda/envs/_build

$PYTHON setup.py install
