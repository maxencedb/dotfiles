# This file contains the harmless customizations of the 
# zsh shell. So no poweroff aliases

# Force theme
#ZSH_THEME="bira"

# Variables
export EDITOR="vim"
export PATH="${HOME}/bin:${PATH}"

# Alias
alias sl="ls"
alias suod="sudo"
alias poi="poweroff"
alias dm="docker-compose"
alias dr="docker"
alias ku="kubectl"
alias tmp='cd $(mktemp -d -p /tmp tmp.$(date +%H%M).XXXX)'

# Functions
function da()
{
    eval $(ssh-agent)
    ssh-add ~/.ssh/ssl.key
    ssh-add ~/.ssh/id_rsa
}

function arch()
{
    local NAME=$@
    if [ -z "$NAME" ]
    then
        read "?Folder name ? : " NAME
    fi
    NAME=$(echo $NAME | tr ' ' _)

    local FULL_NAME=$(date '+%Y-%m-%d')_${NAME:-$RANDOM}
    mkdir -p ~/archives/$FULL_NAME
    cd ~/archives/$FULL_NAME
}

function ms()
{
    mpv --no-video --ytdl-format=bestaudio ytdl://ytsearch:"$*"
}
function vs()
{
    mpv ytdl://ytsearch:"$*"
}
function mm()
{
    url="$1"
    shift
    mpv --ytdl-raw-options=yes-playlist=,playlist-random= --ytdl-format=bestaudio "$url" $*
}
function vv()
{
    url="$1"
    shift
    mpv "--ytdl-raw-options=yes-playlist=" "$url" $*
}
function dush()
{
    old_ifs=$IFS
    IFS="
"
    for i in $(du -sL "$@" 2>/dev/null | sort -rn); do
        echo -n $i | awk '{printf "%s", $1*1024}' | numfmt --to=iec
        echo -n $i | awk '{for (i=2; i <= NF; i++) printf " %s", $i; print ""}'
    done
    IFS=$old_ifs
}
