#!/usr/bin/env zsh

# Duplicate what is present in /etc/zsh/zshenv
# Set the remaining XDG base directories
[[ -n $XDG_CONFIG_HOME ]] || export XDG_CONFIG_HOME=$HOME/.config
[[ -n $XDG_CACHE_HOME  ]] || export  XDG_CACHE_HOME=$HOME/.cache
[[ -n $XDG_DATA_HOME   ]] || export   XDG_DATA_HOME=$HOME/.local/share
# [[ -n $XDG_RUNTIME_DIR ]] || export XDG_RUNTIME_DIR=$HOME/.runtime
# actual: /run/user/1000

# Extra directory used for personal binaries
# Not under the XDG namespace because it is _not_ part of the XDG spec
export USER_BIN_HOME=$HOME/usr
