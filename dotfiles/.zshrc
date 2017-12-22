source ~/.zsh/environment.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/options.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/startup.zsh
source ~/.zsh/etc.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
