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

create_alias () {
  echo 'alias '$1'="'$2'"' >> ~/.zsh/aliases.zsh;
  source ~/.zsh/aliases.zsh;
}

create_envvar () {
  echo 'export '$1'="'$2'"' >> ~/.zsh/environment.zsh;
  source ~/.zsh/environment.zsh;
}

bindkey '\e[3~' delete-char
bindkey "^[s" insert-sudo
bindkey '^H' backward-kill-word
bindkey '^[a' insert-git-add
bindkey '^[A' insert-git-add-all
bindkey '^[c' insert-git-commit-m
bindkey '^[p' insert-git-push
