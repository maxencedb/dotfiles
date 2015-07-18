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

# Link custom plugin to zshrc for aliases
ln -s "$FILE_PATH/safe.zsh" "$HOME/.oh-my-zsh/custom/safe.zsh"

