#!/bin/bash

# Set current working directory to the directory of this script
cd "$(dirname "$0")"

if ! grep -q 5f721ebb69494adf8f3e4d41f1ac9230 $HOME/.bashrc; then
    cat ./.bashrc >> $HOME/.bashrc
fi

rsync -av \
    --no-perms --chmod=ugo=rwX \
    --delete \
    ./.bashrc.d $HOME/.bashrc.d
