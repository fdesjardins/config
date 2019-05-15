source ~/.zsh/zsh-git-prompt/zshrc.sh

local p="λ"
local current_time='%B%t%b'
local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local git_status='%b$(git_super_status)%{$reset_color%}'
local venv_status='%{$fg[yellow]%}$(venv_info)%{$reset_color%}'

PROMPT="${current_time} ${user_host} ${SHLVL} ${current_dir} ${git_status}
${p} "
