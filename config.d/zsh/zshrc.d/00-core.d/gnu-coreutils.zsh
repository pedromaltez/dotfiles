#!/usr/bin/env zsh

if [[ $PLATFORM == "darwin" ]]; then
  # Use gnu Coreutils instead of Apple's
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

alias ls="ls -G --color --time-style=long-iso"
alias la="ls -la"
# Kind of like 'la', but with permissions displayed in octal. Doesn't work
# great.
alias lao="stat --printf='%A\t%a\t%h\t%U\t%G\t%s\t%.19y\t%n\n' *(DN) | numfmt --to=iec-i --field=6 --delimiter='  ' --suffix=B"
