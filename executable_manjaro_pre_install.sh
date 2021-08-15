#!/usr/bin/env bash

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm yay

yay -S --noconfirm zsh
sudo chsh -s $(which zsh)

sudo pacman -S chezmoi
chezmoi init --apply smichaud
