#!/usr/bin/env bash

sudo pacman -Syu --needed --noconfirm
sudo pacman -S --needed --noconfirm yay

sudo pacman -S --needed --noconfirm zsh
sudo chsh -s $(which zsh)

pacman -S chezmoi --needed --noconfirm
chezmoi init --apply smichaud
