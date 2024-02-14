#!/bin/bash

# Tmux
rm -f ~/.tmux.conf
cp .tmux.conf $HOME

# Alacritty
rm -rf $HOME/.config/alacritty
mkdir -p $HOME/.config/alacritty
cp alacritty.toml $HOME/.config/alacritty

# Nvim
rm -rf ~/.config/nvim
cp -r nvim $HOME/.config/nvim

