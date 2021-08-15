#!/usr/bin/env bash

pacman -Syu --noconfirm
pacman -S --noconfirm yay

yay -S --noconfirm zsh
sudo chsh -s $(which zsh)

sudo pacman -S chezmoi
chezmoi init --apply smichaud
