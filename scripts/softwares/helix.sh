#!/bin/bash

echo "========== HELIX =========="
if command -v "helix" &> /dev/null; then
  echo "- helix is installed"
else
  echo "- helix is not installed"
  echo "- installing it..."
  paru -Sy helix
  echo "- creating helix symlinks to $HOME/.config/helix..."
  # ln [source] [link]
  mkdir -p $HOME/.config/helix
  ln -s $(realpath ./helix-config.toml) $HOME/.config/helix/config.toml
  ln -s $(realpath ./helix-languages.toml) $HOME/.config/helix/languages.toml
fi

echo "========== DOTNET =========="
if command -v "dotnet" &> /dev/null; then
  echo "- dotnet is installed"
else
  echo "- dotnet is not installed"
  echo "- installing it..."
  
  # need to install the dotnet-sdk and omnisharp
  # dotnet-sdk-bin dotnet-host-bin for preview versions
  paru -Sy dotnet-sdk
  paru -Sy omnisharp-roslyn

  sudo dotnet workload update
fi