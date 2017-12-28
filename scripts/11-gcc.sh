#!/bin/bash -ex

sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt update
sudo apt install -y g++-7
