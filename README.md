# Dotfiles

Manage dotfiles.

Minimal setup:

```bash
pacman -Syu
pacman -S chezmoi
chezmoi init https://github.com/smichaud/dotfiles
```

To be able to push changes:

```bash
git config --global user.name "Sebastien Michaud"
git config --global user.name "my.email@gmail.com"

eval `ssh-agent -s`
ssh-keygen -t rsa
ssh-add ~/.ssh/THE_CREATED_KEY
```

Copy the public key to Github > profile icon > setting > SSH and GPG keys > add it!
