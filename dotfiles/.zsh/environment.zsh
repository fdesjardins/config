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
export GOPATH=$HOME/Workspace/go/path
export PATH=$PATH:$GOPATH/bin
export GOROOT=$HOME/Workspace/go/root
export PATH=$PATH:$GOROOT/bin

# Python
export WORKON_HOME=$HOME/.virtualenvs
export PATH=$PATH:$HOME/Workspace/anaconda3/bin

# Misc
export ANSIBLE_NOCOWS=1
export USE_CCACHE="1"
