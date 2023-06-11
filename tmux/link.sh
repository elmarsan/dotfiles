#!/usr/bin/env sh

cp $HOME/.tmux.conf ~/.tmux.conf.backup
rm ~/.tmux.conf
ln -s $(pwd)/.tmux.conf $HOME/.tmux.conf 
