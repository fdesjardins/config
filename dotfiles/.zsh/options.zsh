DISABLE_CORRECTION=true

plugins=(git git-extras node npm pep8 virtualenvwrapper pip python)

ZSH_THEME="af-magic"

setopt AUTO_CD
setopt NO_BEEP
setopt EXTENDED_GLOB
setopt HIST_IGNORE_SPACE

HISTFILE=~/.zsh-history
SAVEHIST=10000
HISTSIZE=10000
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt EXTENDED_HISTORY
