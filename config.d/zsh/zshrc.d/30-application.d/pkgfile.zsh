#!/usr/bin/env zsh

# Checks if command exists in known repositories via pkgfile
# Update the pkgfile database with `pkgfile --update`
# Arch Linux specific
if [[ $PLATFORM == "linux" && -e $(command -v pkgfile) ]]; then
  source /usr/share/doc/pkgfile/command-not-found.zsh
fi
