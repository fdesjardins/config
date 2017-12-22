#!/bin/bash

# install nvm for managing nodejs
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# install node
nvm install node
nvm alias default node

# global NodeJS packages
npmPackages=(
  "deedee"
  "eslint"
  "gulp"
  "np"
  "npm-check-updates"
  "pm2"
  "tldr"
  "webpack"
  "wikiquote-cli"
  "yarn"
)

npm install -g "${npmPackages[@]}"
