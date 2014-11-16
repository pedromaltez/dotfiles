# ------------------------------------------------------------------------------
# Default applications
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Set default applications to use for important system functions
# ------------------------------------------------------------------------------

export EDITOR=vim
export VISUAL=vim
export PAGER=less

export TERMINAL=unknown
case $PLATFORM in
  "linux")  TERMINAL=termite;;
  "darwin") TERMINAL=iterm2;;
esac

# LS_COLORS is required for `ls` to use colors
# BSD and OS X use a different `ls`, which requires LSCOLORS instead.
# Install GNU `ls` on OS X by installing coreutils through homebrew
# Make termite show colored directories with `ls`
if [[ $TERM == "xterm-termite" ]]; then
  eval $(dircolors $XDG_CONFIG_HOME/termite/dircolors)
fi

export BROWSER=unknown
case $PLATFORM in
  "linux")  BROWSER=chromium;;
  "darwin") BROWSER=chrome;;
esac

