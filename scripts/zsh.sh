#!/bin/sh

# Check if necessary is installed
for program in wget git
do
    if ! test_binary $program
    then
        exit_on_error "Need $program for configuration of zsh"
    fi
done

# Launch oh-my-zsh installer
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Add a custom plugin to zshrc for aliases
cat -  > $HOME/.oh-my-zsh/custom/safe.zsh << 'EOF'
# Variables
export EDITOR="vim"

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
EOF

