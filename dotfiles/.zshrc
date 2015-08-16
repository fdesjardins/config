ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

DISABLE_UPDATE_PROMPT=true
DISABLE_CORRECTION=true

#<<< Plugins
plugins=(git history-substring-search safe-paste)
#>>>

VIRTUAL_ENV_DISABLE_PROMPT=yes

# Set name of the theme to load. Look in ~/.oh-my-zsh/themes/
ZSH_THEME="af-magic"

#<<< Options
setopt AUTO_CD
setopt NO_BEEP
#>>>

#<<< Aliases
alias dotzshrc="atom ~/.zshrc --nw"
alias ohmyzsh="atom ~/.oh-my-zsh --nw"
alias dotemacs="emacs ~/.emacs --nw"
alias df="df -H"
alias ls="ls --color"
alias l="ls -l"
alias ll="ls -lsai"
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias rename-cc-kebab="rename -f 's/([a-z])([A-Z])/\$1-\$2/g; y/A-Z/a-z/'"
alias rename-cc-snake="rename -f 's/([a-z])([A-Z])/\$1_\$2/g; y/A-Z/a-z/'"
alias rename-tc-kebab="rename -f 's/([a-z])\ ([A-Z])/\$1-\$2/g; y/A-Z/a-z/'"
alias rename-tc-snake="rename -f 's/([a-z])\ ([A-Z])/\$1_\$2/g; y/A-Z/a-z/'"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias install="sudo apt-get -y install"
alias cpv="rsync -pogh --progress"
alias rnet="sudo restart networking"
alias ports="netstat -tulanp"
alias savepage="wget -E -H -k -K -p"
#laptop stuff
alias bll="xrandr --output DVI-0 --brightness .4 && xrandr --output DVI-1 --brightness .3"
alias blm="xrandr --output DVI-0 --brightness .7 && xrandr --output DVI-1 --brightness .6"
alias blh="xrandr --output DVI-0 --brightness 1 && xrandr --output DVI-1 --brightness .9"
alias kbbl0="sudo sh -c 'echo 0 > /sys/devices/platform/sony-laptop/kbd_backlight'"
alias kbbl1="sudo sh -c 'echo 1 > /sys/devices/platform/sony-laptop/kbd_backlight'"
#>>>

#<<< Functions
insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo

insert_git_add () { zle -U "git add "; }
zle -N insert-git-add insert_git_add

insert_git_add_all () { zle -U "git add . --all"; }
zle -N insert-git-add-all insert_git_add_all

insert_git_commit_m () { zle beginning-of-line; zle -U "git commit -m " }
zle -N insert-git-commit-m insert_git_commit_m

insert_git_push () { zle -U "git push " }
zle -N insert-git-push insert_git_push

insert_super_git () { printf '" git push origin master'; zle -U 'git add . --all && git commit -m "' }
zle -N insert-super-git insert_super_git
#>>>

#<<< Rebindings
bindkey '\e[3~' delete-char
bindkey "^[s" insert-sudo
bindkey '^H' backward-kill-word
bindkey '^[a' insert-git-add
bindkey '^[A' insert-git-add-all
bindkey '^[c' insert-git-commit-m
bindkey '^[p' insert-git-push
bindkey '^[*' insert-super-git
#>>>

#<<< History
HISTFILE=~/.zsh-history
SAVEHIST=10000
HISTSIZE=10000
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt EXTENDED_HISTORY
#>>>

#<<< PATH
export PATH=/usr/local/sbin:/usr/local/bin:/opt/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
export PATH=$PATH:/home/forrest-x6/Workspace/bin
#>>>

#<<< PROMPT
source ~/.zsh/git-prompt/zshrc.sh
# venv_info() { [ $VIRTUAL_ENV ] && echo $(basename $VIRTUAL_ENV) }
local smiley="%(?,%{$fg[green]%}:)%{$reset_color%},%{$fg[red]%}:/%{$reset_color%})"
local current_time='%B%t%b'
local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local git_status='$(git_super_status)%{$reset_color%}'
# local venv_status='%{$fg[yellow]%}$(venv_info)%{$reset_color%}'
PROMPT="${current_time} ${user_host} ${current_dir} ${git_status}
${smiley} "
# RPROMPT="${venv_status}"
#>>>

#<<< Startup
fortune -s | cowsay
#>>>

export TERM='xterm-256color'
export ANSIBLE_NOCOWS=1

#<<< venvwrapper / autoenv
# export WORKON_HOME=~/Workspace/Envs
# source /usr/local/bin/virtualenvwrapper.sh
#>>>

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
