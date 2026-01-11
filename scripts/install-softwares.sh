# ========== PARU ==========
#  make sure paru is not already installed
if command -v "paru" &> /dev/null; then
    echo "paru is installed."
  else
    echo "paru is not installed."
    sudo pacman -S --needed base-devel
    mkdir ~/.source
    pushd ~/.source
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
    popd
  fi

# ========== BRAVE ==========
paru -Sy brave-bin

# ========== KITTY ==========
pacman -Sy kitty