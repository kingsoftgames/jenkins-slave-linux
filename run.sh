#!/bin/bash -e

#
# This script initializes the build environment project "Pirates" on Linux,
# targeting the Android platform.
#
# All scripts and files are placed in the "scripts" folder.
#

cd "$(dirname "$0")"

for file in ./scripts/*.sh; do
    if [ -x $file ]; then
        echo "exec $file"
        $file
    else
        echo "Error: can't exec $file without permission"
        exit 1
    fi
done
unset file
