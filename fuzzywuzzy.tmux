#!/usr/bin/env bash

BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/bin

# Install fzf if necessary
if ! [ -x "$(command -v fzf)" ]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install --update-rc
fi

# Install fortune too
if ! [ -x "$(command -v fortune)" ]; then
  if [ -x "$(command -v brew)" ]; then
    brew install fortune
  fi
fi

binding=$(tmux show-option -gv @fuzzy-wuzzy 2>/dev/null)

# If the user hasn't set a binding, don't bother doing anything
if [ "$?" == "1" ]; then
  exit 0
fi

tmux bind "$binding" new-window "bash $BIN_DIR/was-a-bear"
