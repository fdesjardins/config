export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/sbin:/usr/local/bin:/opt/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH=$PATH:$HOME/Workspace/bin
export PATH=$PATH:$HOME/Workspace/config/bin

# Node
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$HOME/.fastlane/bin:$PATH"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Term
export TERM='xterm-256color'
export ZSH=$HOME/.oh-my-zsh

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
