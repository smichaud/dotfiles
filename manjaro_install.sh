#!/usr/bin/env bash

yay -S --needed --nocleanmenu --nodiffmenu \
    ttf-fira-mono ttf-joypixels noto-fonts-emoji ttf-polybar-icons powerline-fonts

yay -S --needed --nocleanmenu --nodiffmenu \
    termite-git kitty neovim-nightly-bin python-pynvim

yay -S --needed --nocleanmenu --nodiffmenu \
    base-devel cmake swig graphviz

yay -S --needed --nocleanmenu --nodiffmenu \
    ripgrep fzf bat jq fx jello tldr++ fd trash-cli dragon-drag-and-drop lsd bottom

yay -S --needed --nocleanmenu --nodiffmenu sshfs tmux
yay -S --needed --nocleanmenu --nodiffmenu jre jdk
yay -S --needed --nocleanmenu --nodiffmenu yarn npm nvm
yay -S --needed --nocleanmenu --nodiffmenu python2 # Some f*****g npm packages need it...
yay -S --needed --nocleanmenu --nodiffmenu python-pipx
yay -S --needed --nocleanmenu --nodiffmenu python-matplotlib
yay -S --needed --nocleanmenu --nodiffmenu latex-mk texlive-latexextra

yay -S --needed --nocleanmenu --nodiffmenu postgresql
yay -S --needed --nocleanmenu --nodiffmenu docker
yay -S --needed --nocleanmenu --nodiffmenu \
    google-cloud-sdk kubectl k9s cloud-sql-proxy-bin unzip yay gnu-netcat geckodriver
yay -S --needed --nocleanmenu --nodiffmenu bitwarden-cli
yay -S --needed --nocleanmenu --nodiffmenu ulauncher-git # Then install your extensions
yay -S --needed --nocleanmenu --nodiffmenu pulseaudio-bluetooth

yay -S --needed --nocleanmenu --nodiffmenu \
    nemo flameshot peek okular backend pinta simple-scan libreoffice-still mendeleydesktop-bundled

yay -S --needed --nocleanmenu --nodiffmenu \
    teams discord_arch_electron teamspeak3

yay -S --needed --nocleanmenu --nodiffmenu google-chrome

yay -S --needed --nocleanmenu --nodiffmenu \
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
