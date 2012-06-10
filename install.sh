#!/usr/bin/env bash

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
ln -s ~/Dropbox/OS/dotfiles/vimrc ~/.vimrc
ln -s ~/Dropbox/OS/dotfiles/vim ~/.vim

ln -s ~/Dropbox/OS/dotfiles/zshrc ~/.zshrc
ln -s ~/Dropbox/OS/dotfiles/oh-my-zsh ~/.oh-my-zsh

ln -s ~/Dropbox/OS/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Dropbox/OS/dotfiles/gitignore ~/.gitignore
ln -s ~/Dropbox/OS/dotfiles/tmux ~/.tmux.conf

echo "Updating submodules"
git submodule foreach git pull origin master --recurse-submodules

echo "All done."
