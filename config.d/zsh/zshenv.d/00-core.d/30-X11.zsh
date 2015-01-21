#!/usr/bin/env zsh

if [[ $PLATFORM == "linux" ]]; then
  export    XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
  export  XSERVERRC=$XDG_CONFIG_HOME/X11/xserverrc
#  export XAUTHORITY=$XDG_RUNTIME_DIR/X11/xauthority
  export XAUTHORITY=$XDG_CACHE_HOME/X11/xauthority
# Currently can't run startx, only xinit
fi
