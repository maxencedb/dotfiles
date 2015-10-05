#!/bin/sh

# Link xsession and xresources
ln -s "$FILE_PATH/xprofile" "$HOME/.xprofile"
ln -s "$FILE_PATH/Xresources" "$HOME/.Xresources"

# Link to the freedektop config file
mkdir -p "$HOME/.config"
ln -s "$FILE_PATH/user-dirs.dirs" "$HOME/.config/user-dirs.dirs"

