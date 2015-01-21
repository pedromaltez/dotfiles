#!/usr/bin/env zsh

export PATH=$PYENV_ROOT/bin:$PATH

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
