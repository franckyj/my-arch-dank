#!/bin/bash

echo "========== BRAVE =========="
if command -v "brave" &> /dev/null; then
  echo "- brave is installed"
else
  echo "- brave is not installed"
  echo "- installing it..."
  paru -Sy brave-bin
fi