#!/bin/bash

# add google chrome ppa
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

packages=(
  "apt-transport-https"
  "build-essential"
  "ca-certificates"
  "cowsay"
  "curl"
  "git"
  "google-chrome-stable"
  "lm-sensors"
  "software-properties-common"
  "tmux"
  "vim"
  "zsh"
  "xclip"
)

sudo apt install -y "${packages[@]}"

# install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
