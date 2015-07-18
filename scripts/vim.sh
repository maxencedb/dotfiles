#!/bin/sh

# Make sure destination folder is present
mkdir "$HOME/.vim/bundle"
git clone "https://github.com/gmarik/Vundle.vim.git" "$HOME/.vim/bundle/Vundle.vim"

# Link .vimrc
ln -s "$FILE_PATH/vimrc" "$HOME/.vimrc"

