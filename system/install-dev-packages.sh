#!/bin/bash

# add NodeJS apt source
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

packages=(
  "atom"
  "deluge"
  "gimp"
  "google-chrome-stable"
  "inkscape"
  "nginx"
  "nodejs"
  "vlc"
)

sudo apt install -y "${packages[@]}"
