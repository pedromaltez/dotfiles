#!/usr/bin/zsh
alias la="ls -la"
# Kind of like 'la', but with permissions displayed in octal. Doesn't work
# great.
alias lao="stat --printf='%A\t%a\t%h\t%U\t%G\t%s\t%.19y\t%n\n' *(DN) | numfmt --to=iec-i --field=6 --delimiter='	' --suffix=B"
