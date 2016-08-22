#!/bin/bash

packages=(
  "build-essential"
  "cowsay"
  "curl"
  "fortune-mod"
  "git"
  "tmux"
  "vim"
  "zsh"
)

sudo apt install -y "${packages[@]}"

# install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
