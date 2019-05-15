#!/usr/bin/env bash

ws="$HOME/Workspace"
mkdir -p $ws && cd $ws

sudo apt update && sudo apt install -y git

git clone --recursive git://github.com/fdesjardins/config.git

bash config/dotfiles/sync.sh

bash sys/install-base.sh
bash sys/install-dev.sh
bash sys/install-node.sh
