#!/usr/bin/zsh
# git clone git@github.com:zsh-users/antigen.git
# $XDG_CACHE_HOME/zsh/plugins/antigen
source $XDG_CACHE_HOME/zsh/plugins/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle github
antigen bundle heroku
antigen bundle tmux
antigen bundle tmuxinator
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle command-not-found

if [[ $PLATFORM = "darwin" ]]; then
  antigen bundle osx
  antigen bundle brew
fi

# Ruby
antigen bundle bundler
antigen bundle rails
antigen bundle rbenv
antigen bundle ruby

# Python
antigen bundle pip
antigen bundle pyenv

# Theme
antigen theme robbyrussell

antigen apply

