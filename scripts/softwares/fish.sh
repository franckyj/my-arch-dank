#!/bin/bash

echo "========== FISH =========="
if command -v "fish" &> /dev/null; then
  echo "- fish is installed"
else
  echo "- fish is not installed"
  echo "- installing it..."
  paru -Sy fish
  echo "- changing shell..."
  chsh -s /usr/bin/fish
fi