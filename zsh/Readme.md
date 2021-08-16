# Zsh Configurations

## Features
- minimal
- builtin plugin manager(just requires 9 line long of function)
- git support in prompt
- cool aliases
- handy shortcuts

## Installation
Follow following commands for installation
```
# assuming you ar in my-linux-config directory
cp ./zsh ~/.config/

# backing up previous .zshrc file if present
[ -f ~/.zshrc] && mv ~/.zshrc ~/.zshrc.backup

# linking new zshrc
ln -s ~/.config/zsh/zshrc ~/.zshrc
```

## Recomendations
I recommend to install some programs which I have already integrated some keybindings.

### Debian based 
```
sudo apt install ranger
```
For `exa`, refer: https://github.com/ogham/exa/#installation
For `fzf`, refer: https://github.com/junegunn/fzf#installation

### Arch based
```
sudo pacman -S ranger exa fzf fd 
```
