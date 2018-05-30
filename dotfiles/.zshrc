\. ~/.zsh/environment.zsh
\. ~/.zsh/aliases.zsh
\. ~/.zsh/completions.zsh
\. ~/.zsh/options.zsh
\. ~/.zsh/functions.zsh
\. ~/.zsh/prompt.zsh
\. ~/.zsh/startup.zsh
\. ~/.zsh/etc.zsh

[ -s "~/.zsh/secrets.zsh" ] && \. "~/.zsh/secrets.zsh"  # This loads nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.fastlane/bin:$PATH"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
