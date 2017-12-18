#!/bin/bash

# add NodeJS apt source
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt update

# install docker CE apt source
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   edge"

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

# install docker
sudo apt-get install docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER

# install docker compose
sudo curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
