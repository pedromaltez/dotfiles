#!/usr/bin/env zsh

export PATH=$GOPATH/bin:$PATH

if [[ $PLATFORM == "darwin" ]]; then
  export PATH=/usr/local/opt/go/libexec/bin:$PATH
fi
