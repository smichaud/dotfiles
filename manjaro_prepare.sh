#!/usr/bin/env bash

pacman -Syu
pacman -S yay

yay -S zsh
chsh -s $(which zsh)

pacman -S chezmoi
chezmoi init smichaud
