#!/bin/bash -ex

CODENAME=$(lsb_release -s -c)

# Ubuntu 18.04 comes with GCC 7 already
if [ "$CODENAME" != "bionic" ]; then
    sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
fi

sudo apt-get update
sudo apt-get install -y g++-7
