#!/bin/sh

# bash
cp bash/.bashrc ~/.bashrc

# zsh
cp zsh/.zshrc ~/.zshrc
cp -r zsh/.zsh ~/.zsh

# tmux
cp tmux/.tmux.conf ~/.tmux.conf

# vim
cp vim/.vimrc ~/.vimrc
cp -r ./vim/.vim ~/.vim

# nvim
cp -r nvim ~
