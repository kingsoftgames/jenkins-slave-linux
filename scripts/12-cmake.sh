#!/bin/bash -ex

CMAKE_VERSION=3.10.1

CMAKE_DOWNLOAD_URL=http://ftp.xsjme.com/share/software/cmake/$CMAKE_VERSION/cmake-$CMAKE_VERSION-Linux-x86_64.tar.gz
CMAKE_TAR=$(basename $CMAKE_DOWNLOAD_URL)
CMAKE_DIR=$(basename $CMAKE_TAR .tar.gz)

CMAKE_ROOT=$HOME/cmake

if [ -d "$CMAKE_ROOT" ]; then
    echo "$CMAKE_ROOT already exist, remove it first."
    rm -rf "$CMAKE_ROOT"
fi

mkdir -p $CMAKE_ROOT
cd $CMAKE_ROOT

wget -q $CMAKE_DOWNLOAD_URL
tar zxf $CMAKE_TAR
ln -sfn $CMAKE_DIR current
