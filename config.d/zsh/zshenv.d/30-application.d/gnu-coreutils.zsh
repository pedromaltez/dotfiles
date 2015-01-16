#!/usr/bin/env zsh

if [[ $PLATFORM == "darwin" ]]; then
  # Use gnu Coreutils instead of Apple's
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi
