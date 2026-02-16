#!/bin/bash

echo "========== OPENCODE =========="
if command -v "opencode" &> /dev/null; then
  echo "- opencode is installed"
else
  echo "- opencode is not installed"
  echo "- installing it..."
  # paru -Sy brave-bin
  
  curl -fsSL https://opencode.ai/install | bash
fi
