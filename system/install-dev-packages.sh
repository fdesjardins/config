#!/bin/bash

packages=(
  "atom"
  "deluge"
  "fonts-inconsolata"
  "gimp"
  "google-chrome-stable"
  "inkscape"
  "virtualbox"
  "vlc"
)

sudo apt update && sudo apt install -y "${packages[@]}"

# execute other install scripts
cd $(dirname -- "$(readlink -f -- "$BASH_SOURCE")")
bash ./install-node.sh
bash ./install-docker.sh
bash ./install-atom.sh
