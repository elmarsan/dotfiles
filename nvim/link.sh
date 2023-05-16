#!/usr/bin/env sh

cp -r ~/.config/nvim ~/.config/nvim_backup
rm -rf ~/.config/nvim
ln -s $(pwd) ~/.config/nvim
