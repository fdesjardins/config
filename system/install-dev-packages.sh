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
  "virtualbox"
  "vlc"
)

sudo apt install -y "${packages[@]}"

# install nvm for managing nodejs
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

# install node
nvm install node

# place global npm packages in home directory
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
mkdir "${HOME}/.npm-packages"

# global NodeJS packages
npmPackages=(
  "eslint"
  "gulp"
  "loadtest"
  "np"
  "npm-check-updates"
  "pm2"
  "yarn"
)

npm install -g "${npmPackages[@]}"
