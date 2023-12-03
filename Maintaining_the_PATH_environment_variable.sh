#!/bin/bash

# 1. Append a specified path to the end of PATH.
# 2. If the specified directory does not exist, do nothing.
append_path() {
  if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    PATH="${PATH:+"$PATH:"}$1"
  fi
}

# 1. Add the specified path to the beginning of PATH.
# 2. If the specified directory does not exist, do nothing.
prepend_path() {
  if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    PATH="$1:${PATH:+"$PATH"}"
  fi
}

# Examples
append_path $HOME/.bin
prepend_path $HOME/.bin