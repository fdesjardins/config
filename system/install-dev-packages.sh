#!/bin/bash

# add NodeJS apt source
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt update

packages=(
  "atom"
  "deluge"
  "docker.io"
  "fonts-inconsolata"
  "gimp"
  "google-chrome-stable"
  "inkscape"
  "nginx"
  "nodejs"
  "nodejs-legacy"
  "npm"
  "virtualbox"
  "vlc"
)

sudo apt install -y "${packages[@]}"

# place global npm packages in home directory
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
mkdir "${HOME}/.npm-packages"

# global NodeJS packages
npmPackages=(
  "eslint"
  "generator-nm"
  "gulp"
  "loadtest"
  "np"
  "npm"
  "npm-check-updates"
  "pm2"
  "public-ip-cli"
  "speed-test"
  "yo"
)

npm install -g "${npmPackages[@]}"
