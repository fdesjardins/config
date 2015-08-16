#!/usr/bin/env bash

dotfiles="$HOME/Workspace/config/dotfiles";

if [ "$1" == "--unlink" -o "$1" == "-u" ]; then
	find $dotfiles -maxdepth 1 -type f ! -name "sync.sh" -exec sh -c 'rm ~/$(basename {})' \;
	find $dotfiles/.atom/* -maxdepth 0 -type f -exec sh -c 'rm ~/.atom/$(basename {})' \;
	find $dotfiles/.zsh/* -maxdepth 0 -exec sh -c 'rm -r ~/.zsh/$(basename {})' \;
else
	find $dotfiles -maxdepth 1 -type f ! -name "sync.sh" -exec ln -sf {} ~ \;
	find $dotfiles/.atom/* -maxdepth 0 -type f -exec sh -c 'ln -sf {} ~/.atom' \;
	find $dotfiles/.zsh/* -maxdepth 0 -exec sh -c 'ln -sf {} ~/.zsh' \;
fi
