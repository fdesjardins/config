export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/sbin:/usr/local/bin:/opt/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
export PATH=$PATH:$HOME/Workspace/bin
export PATH=$PATH:$HOME/Workspace/nodejs/bin
export PATH=$PATH:$HOME/Workspace/nodejs/n
export PATH=$PATH:$HOME/.rvm/bin
export PATH=$PATH:$HOME/Workspace/go/bin

export ZSH=$HOME/.oh-my-zsh

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

export TERM='xterm-256color'

export ANSIBLE_NOCOWS=1

export N_PREFIX=$HOME/Workspace/nodejs

export GOPATH=$HOME/Workspace/go

export WORKON_HOME=$HOME/.virtualenvs
