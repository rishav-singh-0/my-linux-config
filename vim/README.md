![VIM](https://dnp4pehkvoo6n.cloudfront.net/43c5af597bd5c1a64eb1829f011c208f/as/Ultimate%20Vimrc.svg)
# Vim Configurations

## Before we begin:
The “vimrc” (Vim resource configuration) file provides initialization settings that configure Vim every time it starts. This file can be found in “$HOME/.vimrc” for Linux/OSX and “$HOME/_vimrc” for Windows users. Inside Vim, type “:echo $HOME” to see the value of “$HOME” for your system.

--> To see the content files you might have to enable hidden files

## Use this configuration:

`mkdir ~/.cache/vim`

### Basic Configuration:
`cp ./basic.vim ~/.vimrc`

### Main Configuration:

`cp ./main.vim ~/.vimrc`

install vim-plug from [here](https://github.com/junegunn/vim-plug).

OR
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Once done then open vim and type `:PlugInstall` in command mode.
This should install required plugins.


#### Fonts:
Follow [this guide](../fonts/Readme.md) for fonts

After this select FuraMono-Regular-Powerline font from preferences of your terminal emulator.
