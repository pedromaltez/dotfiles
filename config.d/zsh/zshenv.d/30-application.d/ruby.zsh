#!/usr/bin/env zsh

# Ruby tools
export IRBRC=$XDG_CONFIG_HOME/irb/irbrc
export PRYRC=$XDG_CONFIG_HOME/pry/pryrc

# Rbenv binary locations
export RBENV_ROOT=$USER_BIN_HOME/lib/rbenv

# Ruby versions below 2.1.0 are not aware of the GEM_SPEC_CACHE variable and
# will always place their gem cache in $HOME/.gem instead
export GEM_SPEC_CACHE=$XDG_CACHE_HOME/ruby/gem/spec

# Bundle config locations
export BUNDLE_CONFIG=$XDG_CONFIG_HOME/bundler/config

export SUP_BASE=$XDG_CONFIG_HOME/sup
