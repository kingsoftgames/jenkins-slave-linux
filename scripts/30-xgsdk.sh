#!/bin/bash -ex

XGSDK_DOWNLOAD_URL=http://ftp.intranet.rog2.org/share/software/android/xgsdk-cmd-1.2.zip

XGSDK_ROOT=$HOME/android/xgsdk

if [ -d "$XGSDK_ROOT" ]; then
    echo "$XGSDK_ROOT already exist, remove it first."
    rm -rf "$XGSDK_ROOT"
fi

mkdir -p $XGSDK_ROOT
cd $XGSDK_ROOT

wget -q $XGSDK_DOWNLOAD_URL
unzip -q $(basename $XGSDK_DOWNLOAD_URL)
