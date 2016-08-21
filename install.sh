#!/usr/bin/env bash

ws="$HOME/Workspace"
mkdir -p $ws && cd $ws
git clone --recursive git://github.com/fdesjardins/config.git
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
bash config/dotfiles/sync.sh
