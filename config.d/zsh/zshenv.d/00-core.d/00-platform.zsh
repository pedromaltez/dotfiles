#!/usr/bin/env zsh

# Figure out the platform as early as possible and test for it on platform
# specific settings. Use the PLATFORM variable to sanitize the output of `uname`
export PLATFORM=unknown
case $(uname) in
  "Linux")  PLATFORM="linux";;
  "Darwin") PLATFORM="darwin";;
esac
