#!/bin/bash

echo "========== PARU =========="
if command -v "paru" &> /dev/null; then
  echo "- paru is installed"
else
  echo "- paru is not installed"
  echo "- installing it..."
  sudo pacman -S --needed base-devel
  mkdir $HOME/.source
  pushd $HOME/.source
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg -si
  popd
fi