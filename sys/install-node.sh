#!/bin/bash

mkdir $HOME/.nvm

# install nvm for managing nodejs
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# install node
nvm install node
nvm alias default node

# global NodeJS packages
npmPackages=(
  "deedee"
  "np"
  "npm-check-updates"
  "pm2"
  "tldr"
  "wikiquote-cli"
  "fixpack"
  "nodemon"
  "httpserver"
  "emma-cli"
  "peerflix"
)

npm install -g "${npmPackages[@]}"

# install yarn
curl -o- -L https://yarnpkg.com/install.sh | bash
