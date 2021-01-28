# Aliases
alias wr='nitrogen --set-centered --random'
alias myip="curl http://ipecho.net/plain; echo"

# ls aliases
alias l="ls -ACoshF --color=always"\
    la="ls -AFh"\
    ll="ls -l"


# git aliases
alias g="git"\
    gf="git fetch"\
    gck="git checkout"


# Install in debian
alias apti="sudo apt install"
alias update="sudo apt update && echo '\n' && sudo apt upgrade &&
    echo '\n\n' && sudo apt autoremove &&  echo '\n' && sudo apt autoclean"

# ROS
alias rl="roslaunch"\
    rr="rosrun"\
    rtl="rostopic list"
alias rlv="roslaunch vitarana_drone"

# Safety
alias rm='rm -ir'
alias cp='cp -i'
alias mv='mv -i'

# Other Common Aliases
alias grep='grep --color'
alias h='history'
alias hgrep="fc -El 0 | grep"
alias c="clear"

# VI Mode
# set -o vi

# export SHOME=/home/kira/rishav

# Scilab
export PATH=$PATH:$HOME/scilab-6.1.0/bin/

# Pycharm
export PATH=$PATH:$HOME/pycharm-edu-2020.2.3/bin

# Android Studio
export ANDROID_HOME=$HOME/Android/Sdk
export JAVA_HOME=$HOME/android-studio/jre
# export ANDROID_EMULATOR_HOME=$ANDROID_SDK_HOME/.android/
# export ANDROID_AVD_HOME=$ANDROID_EMULATOR_HOME/avd/

export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# Flutter
export PATH=$PATH:$HOME/flutter/bin

export CHROME_EXECUTABLE='chromium-browser'
