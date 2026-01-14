#!/bin/bash

echo "========== KITTY =========="
if command -v "kitty" &> /dev/null; then
  echo "- kitty is installed"
else
  echo "- kitty is not installed"
  echo "- installing it..."
  paru -Sy kitty
  echo "- creating kitty and kitten symlinks to /usr/bin..."
  sudo ln -s $HOME/.local/kitty.app/bin/kitty /usr/bin/kitty
  sudo ln -s $HOME/.local/kitty.app/bin/kitten /usr/bin/kitten
  # need to set the shell as /usr/bin/fish...
fi