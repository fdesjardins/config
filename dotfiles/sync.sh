#!/usr/bin/env bash

dotfiles="$HOME/Workspace/config/dotfiles";

if [ ! -d $dotfiles/.oh-my-zsh ]; then
	git clone https://github.com/robbyrussell/oh-my-zsh $dotfiles/.oh-my-zsh;
fi

if [ "$1" == "--unlink" -o "$1" == "-u" ]; then
	echo 'unlinking...';
	find $dotfiles -maxdepth 1 -type f ! -name 'sync.sh' -exec sh -c 'rm ~/$(basename {})' \;
	find $dotfiles/.atom/* -maxdepth 0 -type f -exec sh -c 'rm ~/.atom/$(basename {})' \;
	find $dotfiles/.zsh/* -maxdepth 0 -exec sh -c 'rm -r ~/.zsh/$(basename {})' \;
	find $dotfiles/.oh-my-zsh/* -maxdepth 0 -exec sh -c 'rm -r ~/.oh-my-zsh/$(basename {})' \;
else
	echo 'linking...';
	find $dotfiles -maxdepth 1 -type f ! -name 'sync.sh' -exec sh -c 'ln -sf {} ~/' \;
	mkdir -p ~/.atom/ && find $dotfiles/.atom/* -maxdepth 0 -type f -exec sh -c 'ln -sf {} ~/.atom/' \;
	mkdir -p ~/.zsh/ && find $dotfiles/.zsh/* -maxdepth 0 -exec sh -c 'ln -sf {} ~/.zsh/' \;
	mkdir -p ~/.oh-my-zsh && find $dotfiles/.oh-my-zsh/* -maxdepth 0 -exec sh -c 'ln -sf {} ~/.oh-my-zsh/' \;
fi
