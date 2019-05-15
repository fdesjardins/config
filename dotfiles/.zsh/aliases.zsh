alias dotzshrc="atom ~/.zshrc --nw"
alias ohmyzsh="atom ~/.oh-my-zsh --nw"
alias dotemacs="emacs ~/.emacs --nw"
alias szsh=". ~/.zshrc"

case "$(uname)" in
  Darwin*) alias ls="ls -G" ;;
  Linux*)  alias ls="ls --color -F" ;;
esac

alias l="ls -l | awk '{ if (NR>=2) print \$NF}'"
alias ll="ls -lsai"
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."
alias grep="grep --color=auto"
alias df="df -H"

alias rename-cc-kebab="rename -f 's/([a-z])([A-Z])/\$1-\$2/g; y/A-Z/a-z/'"
alias rename-cc-snake="rename -f 's/([a-z])([A-Z])/\$1_\$2/g; y/A-Z/a-z/'"
alias rename-tc-kebab="rename -f 's/([a-z])\ ([A-Z])/\$1-\$2/g; y/A-Z/a-z/'"
alias rename-tc-snake="rename -f 's/([a-z])\ ([A-Z])/\$1_\$2/g; y/A-Z/a-z/'"

case "$(uname)" in
  Linux*)
    alias update="sudo apt update"
    alias upgrade="sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove"
    alias install="sudo apt -y install"
    alias apts="apt-cache search"
    alias aptsh="apt-cache show"
    alias aptv="apt-cache show | grep Version"

    alias rnet="sudo restart networking"
    alias ports="netstat -tulanp"
;;esac

alias cpv="rsync -avh --progress"
alias savepage="wget -E -H -k -K -p"
alias get="wget --continue --progress=bar --timestamping"
alias gets="wget -q -O -"
alias vless="/usr/share/vim/vim80/macros/less.sh"

alias blab="cat /dev/urandom | head -c"
alias blab32="cat /dev/urandom | base32 | head -c"
alias blab64="cat /dev/urandom | base64 | head -c"

alias mknm="cpv ~/Workspace/github/fdesjardins/nm/ ~/Workspace/npm/"
alias nodeup="bash ~/Workspace/config/system/install-node.sh"
alias syncconfig="cd ~/Workspace/config/ && git add . --all && git commit -m 'sync' && git pom && cd -"
alias sshpk="cat ~/.ssh/id_rsa.pub | xclip -sel clip && echo 'Copied to clipboard:\n\n'$(cat ~/.ssh/id_rsa.pub)"

alias py3serve="python3 -m http.server"
alias py2serve="python -m SimpleHTTPServer"
alias nodeserve="npx http-server"
alias dockerserve="docker run -p 80:80 -v $(pwd):/usr/share/nginx/html nginx"

alias mkalias="create_alias"
alias mkenvvar="create_envvar"
