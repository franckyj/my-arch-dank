#!/bin/bash

# ========== PARU ==========
#  make sure paru is not already installed
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

# ========== BRAVE ==========
if command -v "brave" &> /dev/null; then
  echo "- brave is installed"
else
  echo "- brave is not installed"
  echo "- installing it..."
  paru -Sy brave-bin
fi

# ========== FISH ==========
if command -v "fish" &> /dev/null; then
  echo "- fish is installed"
else
  echo "- fish is not installed"
  echo "- installing it..."
  paru -Sy fish
  echo "- changing shell..."
  chsh -s /usr/bin/fish
fi

# ========== KITTY ==========
if command -v "kitty" &> /dev/null; then
  echo "- kitty is installed"
else
  echo "- kitty is not installed"
  echo "- installing it..."
  paru -Sy kitty
  echo "- creating kitty and kitten symlinks to /usr/bin..."
  sudo ln -s $HOME/.local/kitty.app/bin/kitty /usr/bin/kitty
  sudo ln -s $HOME/.local/kitty.app/bin/kitten /usr/bin/kitten
fi