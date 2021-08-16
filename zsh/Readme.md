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
cp -r ./zsh ~/.config/

# backing up previous .zshrc file if present
[ -f ~/.zshrc ] && mv ~/.zshrc ~/.zshrc.backup

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

## Key Bindings

- Ctrl + Space : launches ranger in current directory
- Ctrl + e : Edit current command in editor(default is nvim)
- Ctrl + o : Launches lf in current directory and changes dir to the last visited dir
- Ctrl + f : Finds file through `fzf` and changes directory to selected file

### Arch specific bindings

- Ctrl + p : Launches pacinstall script which use `fzf` and pacman package manager to search and install program
- Ctrl + y : Launches yayinstall script which use `fzf` and yay package manager to search and install program
