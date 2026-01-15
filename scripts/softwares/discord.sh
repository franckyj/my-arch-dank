#!/bin/bash

echo "========== DISCORD =========="
if command -v "discord" &> /dev/null; then
  echo "- discord is installed"
else
  echo "- discord is not installed"
  echo "- installing it..."
  paru -Sy discord
fi