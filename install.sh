#!/usr/bin/env bash

PWD=$(dirname $(which $0))

echo "initializing submodules"
git submodule init
git submodule update

echo "Deleting the old files"
rm ~/.vimrc
rm ~/.zshrc
rm -rf ~/.zsh
rm -rf ~/.oh-my-zsh
rm -rf ~/.vim
rm ~/.gitconfig
rm ~/.gitignore
rm ~/.tmux.conf

echo "Symlinking files"
ln -s ${PWD}/vimrc ~/.vimrc
ln -s ${PWD}/vim ~/.vim

ln -s ${PWD}/zshrc ~/.zshrc
ln -s ${PWD}/oh-my-zsh ~/.oh-my-zsh

ln -s ${PWD}/gitconfig ~/.gitconfig
ln -s ${PWD}/gitignore ~/.gitignore
ln -s ${PWD}/tmux ~/.tmux.conf

echo "Updating submodules"
git submodule foreach git pull origin master --recurse-submodules

echo "Path zsh-theme"
ln -s ${PWD}/fg.zsh-theme ~/.oh-my-zsh/themes/fg.zsh-theme

echo "All done."
