#!/bin/bash

packages=(
  "atom"
  "deluge"
  "gimp"
  "google-chrome-stable"
  "inkscape"
  "nginx"
  "vlc"
)

sudo apt install -y "${packages[@]}"
