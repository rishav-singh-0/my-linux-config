#!/bin/sh

#    _    _ _
#   / \  | (_) __ _ ___  ___  ___
#  / _ \ | | |/ _` / __|/ _ \/ __|
# / ___ \| | | (_| \__ \  __/\__ \
#/_/   \_\_|_|\__,_|___/\___||___/

# Common
alias vim="nvim"
# alias sudo="doas"
alias h="history"
alias grep="grep --color"
alias hgrep="fc -El 0 | grep"
alias c="clear"
# alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"

# ls
alias ls="exa -h --color=automatic --icons --group-directories-first"
alias l="ls -F"\
    ll="ls -laF "\
    la="ls -aF"\
    l2="ls --tree --level=2"\
    l3="ls --tree --level=3"

# cd
alias ..="cd .."\
    ...="cd ../.."\
    ....="cd ../../.."

alias va="vim ~/.config/shell/shell_aliases.sh"

# git
alias g="git"\
    gs="git status"\
    gf="git fetch"\
    gp="git push"\
    gpul="git pull"\
    gck="git checkout"

# fzf search
alias gl="git log --oneline | fzf --multi --preview 'git show {+1}'"

# id address
alias ipv="curl 'http://ip-api.com?fields=status,continent,country,regionName,city,lat,lon,timezone,isp,org,as,query'"

# ProtonVPN
alias pv="sudo protonvpn"

# YouTube Download video and audio
alias yt="youtube-dl --add-metadata -ic"\
    yta="youtube-dl --add-metadata -f bestaudio -ic"

# Django
alias pm="python manage.py"

# Keycloak
alias keycloak="$HOME/Applications/keycloak-13.0.1/bin/standalone.sh"

# Safety
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'


#   ___  _   _
#  / _ \| |_| |__   ___ _ __ ___
# | | | | __| '_ \ / _ \ '__/ __|
# | |_| | |_| | | |  __/ |  \__ \
#  \___/ \__|_| |_|\___|_|  |___/

# Ranger
# export RANGER_LOAD_DEFAULT_RC=FALSE

# Add an "alert" alias for long running commands
# alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

