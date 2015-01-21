#!/usr/bin/env zsh

# Nvidia driver settings - put $HOME/.nv elsewhere
# http://us.download.nvidia.com/XFree86/Linux-x86/343.22/README/openglenvvariables.html
if [[ $PLATFORM == "linux" ]]; then
  export __GL_SHADER_DISK_CACHE_PATH=$XDG_CACHE_HOME/nvidia/
fi
