#!/bin/bash
# based on https://gist.github.com/mmstick/8493727

cd /tmp

if ! which lynx > /dev/null; then sudo apt install lynx -y; fi

kernelURL=$(lynx -dump -nonumbers http://kernel.ubuntu.com/~kernel-ppa/mainline/ | grep -v rc | tail -1)

function download() {
  wget $(lynx -dump -listonly -dont-wrap-pre $kernelURL | grep "$1" | grep "$2" | grep amd64 | cut -d ' ' -f 4)
}

echo "Downloading the latest kernel..."
download generic header
download generic image

wget $(lynx -dump -listonly -dont-wrap-pre $kernelURL | grep all | cut -d ' ' -f 4)

# Install Kernel
echo "Installing..."
sudo dpkg -i linux*.deb
echo "Done. You may now reboot."
