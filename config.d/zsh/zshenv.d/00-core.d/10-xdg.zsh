#!/usr/bin/env zsh

# Set the XDG base directories
[[ -n $XDG_CONFIG_HOME ]] || export XDG_CONFIG_HOME=$HOME/.config
[[ -n $XDG_CACHE_HOME  ]] || export  XDG_CACHE_HOME=$HOME/.cache
[[ -n $XDG_DATA_HOME   ]] || export   XDG_DATA_HOME=$HOME/.local/share

# Extra directory used for personal binaries
# Not under the XDG namespace because it is __not__ part of the XDG spec
export USER_BIN_HOME=$HOME/usr
