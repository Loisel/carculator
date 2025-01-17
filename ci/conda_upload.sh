#!/usr/bin/env bash
# Only need to change these two variables
PKG_NAME=carculator
USER=romainsacchi

mkdir ~/conda-bld
conda config --set anaconda_upload no
export CONDA_BLD_PATH=~/conda-bld
export VERSION=`date +%Y.%m.%d`
conda build . --old-build-string
ls $CONDA_BLD_PATH/noarch/
anaconda -t $CONDA_UPLOAD_TOKEN upload -u $USER $CONDA_BLD_PATH/noarch/$PKG_NAME-$VERSION-py_0.tar.bz2 --force
