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

# ========== STEAM ==========
if command -v "steam" &> /dev/null; then
  echo "- steam is installed"
else
  echo "- steam is not installed"
  echo "- installing it..."
  paru -Sy steam
  paru -Sy gamemode lib32-gamemode
  echo "- steam need to start with the `-system-composer` argument"
  paru -Sy gamescope

  # need to create a steam.desktop file with variables defined in it
  STEAM_DESKTOP_APP="$HOME/.local/share/applications/steam.desktop"
  touch $STEAM_DESKTOP_APP
  cat << EOT > $STEAM_DESKTOP_APP
[Desktop Entry]
PrefersNonDefaultGPU=false
STEAM_FORCE_DESKTOPUI_SCALING=1 steam
EOT
fi

# ========== FONTS ==========
echo "- installing jetbrains mono nerd font"
paru -Sy ttf-jetbrains-mono-nerd