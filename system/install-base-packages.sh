#!/bin/bash

packages=(
  "apt-transport-https"
  "build-essential"
  "ca-certificates"
  "cowsay"
  "curl"
  "fortune-mod"
  "git"
  "software-properties-common"
  "tmux"
  "vim"
  "zsh"
  "xclip"
)

sudo apt install -y "${packages[@]}"

# install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
