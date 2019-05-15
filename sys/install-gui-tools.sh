#!/bin/bash

packages=(
  "deluge"
  "vlc"
  "filelight"
  "simplescreenrecorder"
  "dolphin"
  "gimp"
  "inkscape"
  "virtualbox"
)

sudo apt update && sudo apt install -y "${packages[@]}"
