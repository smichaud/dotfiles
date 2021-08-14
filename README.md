# Dotfiles

Manage dotfiles.

Minimal setup:

``` bash
pacman -Syu
pacman -S chezmoi
chezmoi init smichaud
# Because Github and dotfiles name are default, this is the same as:
# chezmoi init https://github.com/smichaud/dotfiles
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
