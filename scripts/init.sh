#!/bin/bash

# install homebrew
if ! command -v brew &> /dev/null; then
    echo "Start to install homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
# pull mitamae
arch=$(uname -m)


echo "start to download mitamae download"
if [ $arch = "arm64" ] ; then
    sudo curl -fsSLo /usr/local/bin/mitamae https://github.com/itamae-kitchen/mitamae/releases/latest/download/mitamae-aarch64-darwin
else
    sudo curl -fsSLo /usr/local/bin/mitamae https://github.com/itamae-kitchen/mitamae/releases/latest/download/mitamae-x86_64-darwin
fi
echo "done mitamae downloading"

sudo chmod +x /usr/local/bin/mitamae

# install Rosetta2 when Apple Silicon Mac machine
if [ $arch = "arm64" ] ; then
    /usr/sbin/softwareupdate --install-rosetta --agree-to-license
fi
