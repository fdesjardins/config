#!/usr/bin/env bash

ws="$HOME/Workspace"
mkdir -p $ws && cd $ws

sudo apt update && sudo apt install -y git

git clone --recursive git://github.com/fdesjardins/config.git

bash "$ws/config/dotfiles/sync.sh"
bash "$ws/config/sys/install-base.sh"
bash "$ws/config/sys/install-dev.sh"
bash "$ws/config/sys/install-node.sh"
