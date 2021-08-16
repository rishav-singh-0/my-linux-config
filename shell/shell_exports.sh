#!/bin/sh

#  _____                       _
# | ____|_  ___ __   ___  _ __| |_ ___
# |  _| \ \/ / '_ \ / _ \| '__| __/ __|
# | |___ >  <| |_) | (_) | |  | |_\__ \
# |_____/_/\_\ .__/ \___/|_|   \__|___/
#            |_|

# Default Programs
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="brave"

# ~/ Clean-up
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export MBSYNCRC="${XDG_CONFIG_HOME:-$HOME/.config}/mbsync/config"
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"

export _JAVA_AWT_WM_NONREPARENTING=1    # Fix for Java applications in dwm


#  ____       _   _
# |  _ \ __ _| |_| |__
# | |_) / _` | __| '_ \
# |  __/ (_| | |_| | | |
# |_|   \__,_|\__|_| |_|

# local bin
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$HOME/.local/bin/statusbar
PATH=$PATH:$HOME/.local/bin/custom
PATH=$PATH:$HOME/.local/bin/Applications

# Cargo builds
PATH=$PATH:$HOME/.cargo/bin

# Heroku
PATH=$PATH:$HOME/Applications/heroku/bin

# Scilab
PATH=$PATH:$HOME/Applications/scilab-6.1.1/bin

# Pycharm
PATH=$PATH:$HOME/pycharm-edu-2020.2.3/bin

# Anaconda
# export ANACONDA_HOME=$HOME/src/anaconda3
# PATH=$PATH:$ANACONDA_HOME/bin
# source $ANACONDA_HOME/etc/profile.d/conda.sh

# Android Studio
export JAVA_HOME=$HOME/android-studio/jre
PATH=$PATH:$JAVA_HOME/bin
# export ANDROID_EMULATOR_HOME=$ANDROID_SDK_HOME/.android/
# export ANDROID_SDK_ROOT=$ANDROID_HOME/platform

export ANDROID_HOME=$HOME/android-studio
export ANDROID_SDK_HOME=$HOME/Android/Sdk
export ANDROID_EMULATOR_HOME=$ANDROID_SDK_HOME/.android
export ANDROID_AVD_HOME=$ANDROID_EMULATOR_HOME/avd
PATH=$PATH:$ANDROID_HOME/bin
PATH=$PATH:$ANDROID_SDK_HOME
PATH=$PATH:$ANDROID_SDK_HOME/emulator
PATH=$PATH:$ANDROID_SDK_HOME/tools
PATH=$PATH:$ANDROID_SDK_HOME/tools/bin
PATH=$PATH:$ANDROID_SDK_HOME/platform-tools
export ANDROID_SDK_HOME=$ANDROID_SDK_HOME/platforms

# Flutter
FLUTTER_HOME=$HOME/src/flutter
PATH=$PATH:$FLUTTER_HOME/bin
export CHROME_EXECUTABLE='brave'

# Quartus
QUARTUS_ROOTDIR=$HOME/src/intelFPGA_lite/19.1
PATH=$PATH:$HOME/src/intelFPGA_lite/19.1/quartus/bin
export QSYS_ROOTDIR="$HOME/src/intelFPGA_lite/19.1/quartus/sopc_builder/bin"

# Gradefast++
# export PYTHONPATH="$PYTHONPATH:/mnt/source/src/anaconda3/envs/gradefast-env/GradeFast-2019"

# exporting PATH variable at once
export PATH
