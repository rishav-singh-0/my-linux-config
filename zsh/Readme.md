# Zsh Configurations
![zsh config](https://github.com/rishav-singh-0/my-linux-config/blob/main/screenshots/zsh0.png?raw=true)

## Features
- minimal
- builtin plugin manager(just requires 9 line long of function)
- git support in prompt
- cool aliases
- handy shortcuts

## Installation

### Method 1

Follow following commands for installation
```
# assuming you ar in my-linux-config directory
cp -r ./zsh ~/.config/

# backing up previous .zshrc file if present
[ -f ~/.zshrc ] && mv ~/.zshrc ~/.zshrc.backup

# linking new zshrc
ln -s ~/.config/zsh/zshrc ~/.zshrc
```
### Method 2: Smart way
Change value of `ZDOTDIR` while login
We can do this by writing following line in `.bash_profile` file
```
export ZDOTDIR=~/.config/zsh
```
> Note: `.bash_profile` file should be sourced while login, or you can put this line in
> any file/script which is been executed while login

## Recomendations
I recommend to install some programs which I have already integrated some keybindings.

### Debian based
```
sudo apt install ranger neovim
```
For `exa`, refer: https://github.com/ogham/exa/#installation

For `fzf`, refer: https://github.com/junegunn/fzf#installation

For `fd`, refer: https://github.com/sharkdp/fd#installation

For `ripgrep`, refer: https://github.com/BurntSushi/ripgrep#installation

### Arch based
```
sudo pacman -S ranger exa fzf fd neovim ripgrep
```

## Key Bindings

- **Ctrl + Space** : Launches `ranger` in current directory
- **Ctrl + e** : Edit current command in editor(default is `nvim`)
- **Ctrl + o** : Launches `lf` in current directory and changes dir to the last visited dir
- **Ctrl + f** : Finds file through `fzf` and changes directory to selected file
- **Ctrl + r** : Search in history using `fzf`
- **Ctrl + k** : Read manual page for specific command eg. foo --> man foo

### Debian specific bindings

- **Ctrl + a** : Launches pacinstall script which use `fzf` and `apt` package manager to search and install program

### Arch specific bindings

- **Ctrl + p** : Launches aptinstall script which use `fzf` and `pacman` package manager to search and install program
- **Ctrl + y** : Launches yayinstall script which use `fzf` and `yay` package manager to search and install program

## Troubleshooting

### Fonts/Icons not displayed properly
Follow [this guide](../fonts/) to install the fonts which i am using
