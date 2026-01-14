#!/bin/bash

echo "========== STEAM =========="
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
Name=Steam
Comment=Steam
Exec=env STEAM_FORCE_DESKTOPUI_SCALING=1 PrefersNonDefaultGPU=false steam -system-composer
Type=Application
EOT
fi