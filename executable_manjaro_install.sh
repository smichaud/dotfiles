#!/usr/bin/env bash

yay -S --needed --noconfirm \
    ttf-fira-mono ttf-joypixels noto-fonts-emoji ttf-polybar-icons powerline-fonts

yay -S --needed --noconfirm \
    termite-git kitty neovim-nightly-bin python-pynvim

yay -S --needed --noconfirm \
    base-devel cmake swig graphviz

yay -S --needed --noconfirm \
    ripgrep fzf bat jq fx jello tldr++ fd trash-cli dragon-drag-and-drop lsd bottom

yay -S --needed --noconfirm sshfs tmux
yay -S --needed --noconfirm jre jdk
yay -S --needed --noconfirm yarn npm nvm
yay -S --needed --noconfirm python2 # Some f*****g npm packages need it...
yay -S --needed --noconfirm python-pipx
yay -S --needed --noconfirm python-matplotlib
yay -S --needed --noconfirm latex-mk texlive-latexextra

yay -S --needed --noconfirm postgresql
yay -S --needed --noconfirm docker
yay -S --needed --noconfirm \
    google-cloud-sdk kubectl k9s cloud-sql-proxy-bin unzip yay gnu-netcat geckodriver
yay -S --needed --noconfirm bitwarden-cli
yay -S --needed --noconfirm ulauncher-git # Then install your extensions
yay -S --needed --noconfirm pulseaudio-bluetooth

yay -S --needed --noconfirm \
    nemo flameshot peek okular backend pinta simple-scan libreoffice-still mendeleydesktop-bundled

yay -S --needed --noconfirm \
    teams discord_arch_electron teamspeak3

yay -S --needed --noconfirm google-chrome

yay -S --needed --noconfirm \
    bash-language-server \
    dockerfile-language-server \
    rust-analyzer \
    vim-language-server \
    yaml-language-server \
    vscode-css-languageserver-bin \
    vscode-html-languageserver \
    vscode-json-languageserver \
    pyright \
    lua-language-server
