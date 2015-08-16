#!/usr/bin/env bash

ws="$HOME/Workspace"
mkdir -p $ws && cd $ws
git clone --recursive git://github.com/fdesjardins/config.git
bash config/dotfiles/sync.sh
