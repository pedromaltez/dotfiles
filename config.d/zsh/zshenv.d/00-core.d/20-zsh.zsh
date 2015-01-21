#!/usr/bin/env zsh

# Duplicate of what is present in /etc/zsh/zshenv
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
# Antigen's plugins only need to be cached, not stored with the zsh config files
export ADOTDIR=$XDG_CACHE_HOME/zsh/plugins/antigen

export HISTFILE=$XDG_CACHE_HOME/zsh/zsh_history
