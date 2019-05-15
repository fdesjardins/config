#!/bin/bash

packages=(
  "ark"
  "build-essential"
  "cowsay"
  "ffmpeg"
  "gifsicle"
  "jpegoptim"
  "optipng"
  "unzip"
  "zsh"
)

sudo apt update && sudo apt install -y "${packages[@]}"

# install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo 'Changing shell to zsh...'
chsh -s /usr/bin/zsh $(whoami)
