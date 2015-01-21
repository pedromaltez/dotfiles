#!/usr/bin/env zsh

# Make termite show colored directories with `ls`
if [[ $TERM == "xterm-termite" ]]; then
  eval $(dircolors $XDG_CONFIG_HOME/termite/dircolors)
fi
