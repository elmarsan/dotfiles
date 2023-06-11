#!/usr/bin/env sh

cp -r ~/.config/alacritty ~/.config/alacritty_backup
rm -rf ~/.config/alacritty
ln -s $(pwd) ~/.config/alacritty
