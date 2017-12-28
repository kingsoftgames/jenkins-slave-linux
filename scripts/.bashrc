
# Snippet for .bashrc subfiles in ~/.bashrc.d
# See: https://sanctum.geek.nz/arabesque/shell-config-subfiles/
# Sentry GUID to make this snippet idempotent: 5f721ebb69494adf8f3e4d41f1ac9230
if [ -d $HOME/.bashrc.d ]; then
    for file in $HOME/.bashrc.d/*.sh; do
        if [ -r $file ]; then
            # echo "source $file"
            . $file
        fi
    done
    unset file
fi