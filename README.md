# dotfiles
Simple Linux configuration files

## Goal
This repository is meant to hold my preferred configuration files
for the software I use. This includes shells, git, vim etc. It also
contains a simple shell script to install them.

## Motivation
Not re-doing my configuration over and over again.

## Installation
When running install.sh, all scripts in the scripts directory are called. They
each handle the configs of one program. Mostly, this is just softlinking to the
"files" directory.

## Future improvements
At some point i'd like to see if some tools make install easier. Maybe Puppet ?
