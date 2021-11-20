# Dotfiles

Manage dotfiles using [chezmoi](https://www.chezmoi.io/).

Minimal setup:

``` bash
# This will require a reboot
chsh -s $(which zsh)

yay -S chezmoi

# Because Github and dotfiles name are default, this is the same as:
# chezmoi init https://github.com/smichaud/dotfiles
chezmoi init --apply smichaud

sudo pacman -Syu --needed --noconfirm
```

To be able to push changes:

``` bash
git config --global user.name "Sebastien Michaud"
git config --global user.name "my.email@gmail.com"

eval `ssh-agent -s`
ssh-keygen -t rsa
ssh-add ~/.ssh/THE_CREATED_KEY
chezmoi cd
git remote rm origin
git remote add origin git@github.com:smichaud/dotfiles.git
```

Copy the public key to Github \> profile icon \> setting \> SSH and GPG
keys \> add it!

## Synchronization

Chezmoi allows to automatically commit and push.

This is the current config because of: `~/.config/chezmoi/chezmoi.toml`

``` toml
[git]
    autoCommit = true
    autoPush = true
```

## System76 Gazelle

Kernel: The only kernel not causing problem on manjaro is: 5.12.19-1
Sound: Sound stop working once, used this to fix: `sudo alsactl init`
