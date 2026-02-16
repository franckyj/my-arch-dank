#!/bin/bash

echo "========== COPILOT =========="
if command -v "copilot" &> /dev/null; then
  echo "- copilot is installed"
else
  echo "- copilot is not installed"
  echo "- installing it..."
  paru -Sy github-copilot-cli
fi