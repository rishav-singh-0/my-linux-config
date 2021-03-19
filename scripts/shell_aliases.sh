#    _    _ _
#   / \  | (_) __ _ ___  ___  ___
#  / _ \ | | |/ _` / __|/ _ \/ __|
# / ___ \| | | (_| \__ \  __/\__ \
#/_/   \_\_|_|\__,_|___/\___||___/

# Common
alias vim="nvim"
# alias sudo="doas"
alias myip="curl ip.me"
alias grep='grep --color'
alias h='history'
alias hgrep="fc -El 0 | grep"
alias c="clear"

# ls
alias l="ls -ACoshF --color=auto --group-directories-first"\
    la="ls -AFh"\
    ll="ls -lAh"

# cd
alias ..="cd .."\
    ...="cd ../.."\
    ....="cd ../../.."

# git
alias g="git"\
    gf="git fetch"\
    gck="git checkout"

# fzf search
alias gl="git log --oneline | fzf --multi --preview 'git show {+1}'"

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Install in debian
alias apti="sudo apt install"
alias update="sudo apt update && echo '\n' && sudo apt upgrade &&
    echo '\n\n' && sudo apt autoremove &&  echo '\n' && sudo apt autoclean"

# YouTube Download video and audio
alias yt="youtube-dl --add-metadata -ic"\
    yta="youtube-dl --add-metadata -f bestaudio -ic"

# lf - FileManager
# alias lf="~/.local/bin/lf"

# Ranger FileManager
alias r="ranger"\
    sr="sudo ranger"

# Safety
alias rm='rm -i'
alias cp='cp -ir'
alias mv='mv -i'

# VI Mode
# set -o vi


#  ____       _   _
# |  _ \ __ _| |_| |__
# | |_) / _` | __| '_ \
# |  __/ (_| | |_| | | |
# |_|   \__,_|\__|_| |_|

# export SHOME=/home/kira/rishav

# local bin
export PATH=$PATH:$HOME/.local/bin

# Cargo builds
export PATH=$PATH:$HOME/.cargo/bin

# Scilab
export PATH=$PATH:$HOME/scilab-6.1.0/bin/

# Pycharm
export PATH=$PATH:$HOME/pycharm-edu-2020.2.3/bin

# Android Studio
export ANDROID_HOME=$HOME/Android/Sdk
export JAVA_HOME=$HOME/android-studio/jre
export PATH=$PATH:$JAVA_HOME/bin
# export ANDROID_EMULATOR_HOME=$ANDROID_SDK_HOME/.android/
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Flutter
export PATH=$PATH:$HOME/flutter/bin

export CHROME_EXECUTABLE='chromium-browser'

export EDITOR='nvim'
export FILE='ranger'


#   ___  _   _
#  / _ \| |_| |__   ___ _ __ ___
# | | | | __| '_ \ / _ \ '__/ __|
# | |_| | |_| | | |  __/ |  \__ \
#  \___/ \__|_| |_|\___|_|  |___/

# Ranger
export RANGER_LOAD_DEFAULT_RC=FALSE

# Add an "alert" alias for long running commands
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# stty -ixon  # Disable C-s and C-q

