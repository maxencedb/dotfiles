# This file contains the harmless customizations of the 
# zsh shell. So no poweroff aliases

# Force theme
ZSH_THEME="cypher-with-git"
#ZSH_THEME="bira"

# Variables
export EDITOR="vim"
export PATH="${HOME}/bin:${PATH}"

# Alias
alias sl="ls"
alias suod="sudo"
alias poi="poweroff"

# Functions
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
