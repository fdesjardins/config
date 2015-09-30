alias dotzshrc="atom ~/.zshrc --nw"
alias ohmyzsh="atom ~/.oh-my-zsh --nw"
alias dotemacs="emacs ~/.emacs --nw"

alias df="df -H"
alias ls="ls --color -F"
alias l="ls -l"
alias ll="ls -lsai"
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."
alias grep="grep --color=auto"

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
alias serve="python -m SimpleHTTPServer"
alias get="wget --continue --progress=bar --timestamping"

alias bll="xrandr --output DVI-0 --brightness .4 && xrandr --output DVI-1 --brightness .3"
alias blm="xrandr --output DVI-0 --brightness .7 && xrandr --output DVI-1 --brightness .6"
alias blh="xrandr --output DVI-0 --brightness 1 && xrandr --output DVI-1 --brightness .9"
alias kbbl0="sudo sh -c 'echo 0 > /sys/devices/platform/sony-laptop/kbd_backlight'"
alias kbbl1="sudo sh -c 'echo 1 > /sys/devices/platform/sony-laptop/kbd_backlight'"

alias mkalias="create_alias"
alias mkenvvar="create_envvar"
