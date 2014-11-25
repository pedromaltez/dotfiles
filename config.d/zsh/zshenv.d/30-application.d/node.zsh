#!/usr/bin/zsh

# Node/npm setup
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

export NDENV_ROOT=$USER_BIN_HOME/lib/ndenv

# This could be problematic... either don't ever use system node/npm or have it
# store its packages alongside those of the same version of node installed
# through ndenv. ndenv sets the prefix to the same as below for its versions of
# node/npm, and I can't leave it alone for system node because only root has
# writing rights to the default npm prefix location
# Need to figure out a way to check if the current version was installed by the
# system or not. If it was installed by the system set the variable to one
# directory, otherwise to another.
# e.g. $NDENV_ROOT/versions/node-version/ndenv-or-sys
# Easiest thing is probably to never use system node.

export NPM_CONFIG_PREFIX=$NDENV_ROOT/versions/$(node --version)

export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/node/npm/bin
