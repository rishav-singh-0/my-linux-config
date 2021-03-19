
#  _               _
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|


# History Control
HISTCONTROL=ignoreboth
shopt -s histappend         # append to the history file, don't overwrite it
HISTSIZE=HISTFILESIZE=1000000      # Infinite history

# Prompt
export PS1="\[\033[38;5;160m\][\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;208m\]\u\[$(tput sgr0)\]\[\033[38;5;70m\]@\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;39m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;227m\]\w\[$(tput sgr0)\]\[\033[38;5;160m\]]\[$(tput sgr0)\]\[\033[38;5;120m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

# enable programmable completion features (you don't need to enablethis, if it's already enabled in /etc/bash.bashrc and /etc/profile sources /etc/bash.bashrc)
se current buffer
if ! shopt -oq posix; then
  [ -f /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
  [ -f /etc/bash_completion ] && . /etc/bash_completion
fi

# source /opt/ros/melodic/setup.bash
# source ~/catkin_ws/devel/setup.bash

# common shell aliases
[ -f ~/.scripts/shell_aliases.sh ] && . ~/.scripts/shell_aliases.sh

[ -f ~/.config/fzf/fzf.bash ] && source ~/.config/fzf/fzf.bash
