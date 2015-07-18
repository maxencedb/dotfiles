#!/bin/sh

# Copy the i3 config files to correct
# directories

# make the i3 directory
mkdir -p "$HOME/.i3"

# Link necessary files
ln -s "$FILE_PATH/i3config" "$HOME/.i3/config"
ln -s "$FILE_PATH/i3status.conf" "$HOME/.i3status.conf"

