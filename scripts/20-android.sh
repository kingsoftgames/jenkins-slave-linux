#!/bin/bash -ex

SDK_DOWNLOAD_URL=http://ftp.intranet.rog2.org/share/software/android/android-sdk_r24.4.1-linux.tar.gz
NDK_DOWNLOAD_URL=http://ftp.intranet.rog2.org/share/software/android/android-ndk-r12b-linux-x86_64.zip

SDK_FOLDER=android-sdk-linux
NDK_FOLDER=android-ndk-r12b

ANDROID_ROOT=$HOME/android

if [ -d "$ANDROID_ROOT" ]; then
    echo "$ANDROID_ROOT already exist, remove it first."
    rm -rf "$ANDROID_ROOT"
fi

mkdir -p $ANDROID_ROOT
cd $ANDROID_ROOT

wget -q $SDK_DOWNLOAD_URL
wget -q $NDK_DOWNLOAD_URL

tar zxf  $(basename $SDK_DOWNLOAD_URL)
unzip -q $(basename $NDK_DOWNLOAD_URL)

ln -sfn $SDK_FOLDER sdk
ln -sfn $NDK_FOLDER ndk

# Cleanup (those .zip and .tar.gz are so huge!)
rm -vf $(basename $SDK_DOWNLOAD_URL)
rm -vf $(basename $NDK_DOWNLOAD_URL)
