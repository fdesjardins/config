export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/sbin:/usr/local/bin:/opt/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH=$PATH:$HOME/Workspace/bin

# Term
export TERM='xterm-256color'
export ZSH=$HOME/.oh-my-zsh

# NodeJS
export NPM_PACKAGES="${HOME}/.npm-packages"
export PATH=$NPM_PACKAGES/bin:$PATH
export NVM_DIR="/home/forrest/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Ruby
export PATH=$PATH:$HOME/.rvm/bin

# Go
export PATH=$PATH:$HOME/Workspace/go/bin
export GOPATH=$HOME/Workspace/go

# Python
export WORKON_HOME=$HOME/.virtualenvs

# Misc
export ANSIBLE_NOCOWS=1
