#/bin/bash -eu


# pwd
# ls -al
# cd $PREFIX
# pwd
# ls -al

# ls -al /opt/miniconda/envs/_build

# printenv

# cd $SRC_DIR
# RECIPE_DIR=/home/binstar/source/bazaarvoice
# SRC_DIR=/opt/miniconda/conda-bld/work

$PYTHON setup.py install
