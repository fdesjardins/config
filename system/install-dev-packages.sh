#!/bin/bash

packages=(
  "atom"
  "deluge"
  "fonts-inconsolata"
  "gimp"
  "google-chrome-stable"
  "inkscape"
  "nginx"
  "virtualbox"
  "vlc"
)

sudo apt update && sudo apt install -y "${packages[@]}"

cd $(dirname -- "$(readlink -f -- "$BASH_SOURCE")")
bash ./install-node.sh
bash ./install-docker.sh
