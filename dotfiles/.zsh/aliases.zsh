alias dotzshrc="atom ~/.zshrc --nw"
alias ohmyzsh="atom ~/.oh-my-zsh --nw"
alias dotemacs="emacs ~/.emacs --nw"
alias szsh=". ~/.zshrc"

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

alias update="sudo apt update"
alias upgrade="sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove"
alias install="sudo apt -y install"

alias cpv="rsync -pogh --progress"
alias rnet="sudo restart networking"
alias ports="netstat -tulanp"
alias savepage="wget -E -H -k -K -p"
alias serve="python3 -m http.server"
alias get="wget --continue --progress=bar --timestamping"

alias blab="cat /dev/urandom | head -c"
alias blab64="base64 /dev/urandom | head -c"
alias moo="cowsay"

alias brightness="node /home/forrest/brightness.js"
alias kbbl0="sudo sh -c 'echo 0 > /sys/devices/platform/sony-laptop/kbd_backlight'"
alias kbbl1="sudo sh -c 'echo 1 > /sys/devices/platform/sony-laptop/kbd_backlight'"

alias mkalias="create_alias"
alias mkenvvar="create_envvar"

alias mknm="cpv ~/Workspace/etc/nm/{.*,*}"
alias syncconfig="cd ~/Workspace/config/ && git add . --all && git commit -m 'sync' && git pom && cd -"
alias sshpk="cat ~/.ssh/id_rsa.pub | xclip -sel clip && echo 'Copied to clipboard:\n'$(cat ~/.ssh/id_rsa.pub)"

alias pgadmin="/home/forrest/Workspace/anaconda3/bin/python /home/forrest/Workspace/anaconda3/lib/python3.6/site-packages/pgadmin4/pgAdmin4.py"

alias hue="node /home/forrest/Workspace/github/fdesjardins/hue/index.js"
alias h-bu="hue brightness -d u -a"
alias h-bd="hue brightness -d d -a"
alias h-ru="hue redshift -d u -a"
alias h-rd="hue redshift -d d -a"
