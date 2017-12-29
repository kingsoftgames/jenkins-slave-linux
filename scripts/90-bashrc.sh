#!/bin/bash

# Set current working directory to the directory of this script
cd "$(dirname "$0")"

if ! grep -q 5f721ebb69494adf8f3e4d41f1ac9230 $HOME/.bashrc; then
    # Prepend ./.bashrc to $HOME/.bashrc
    # This is because When the SSH slaves plugin connects to a slave, it does not run an interactive shell
    # On Ubuntu, $HOME/.bashrc will return early with non-interactive shell.
    # See: https://wiki.jenkins.io/display/JENKINS/SSH+Slaves+plugin#SSHSlavesplugin-Loginprofilefiles
    cat ./.bashrc $HOME/.bashrc > ./tmp-bashrc
    cp ./tmp-bashrc $HOME/.bashrc
    rm ./tmp-bashrc
fi

rsync -av \
    --no-perms --chmod=ugo=rwX \
    --delete \
    ./.bashrc.d $HOME
