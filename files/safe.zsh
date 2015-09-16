# This file contains the harmless customizations of the 
# zsh shell. So no poweroff aliases

# Force theme
ZSH_THEME="bira"

# Variables
export EDITOR="vim"
export PATH="${HOME}/bin:${PATH}"

# Alias
alias sl="ls"
alias suod="sudo"
alias poi="poweroff"

# Functions
function dush()
{
  SIZES=$(du -sh *) &&
  echo $SIZES | grep -E '^[0-9.]+T' | sort -nr &&
  echo $SIZES | grep -E '^[0-9.]+G' | sort -nr &&
  echo $SIZES | grep -E '^[0-9.]+M' | sort -nr &&
  echo $SIZES | grep -E '^[0-9.]+K' | sort -nr &&
  echo $SIZES | grep -E '^[0-9.]+[[:space:]]' | sort -nr
}
