echo "========== BEGIN =========="

pushd ./scripts/softwares
echo "========== INSTALLING SOFTWARES =========="
./paru.sh
./brave.sh
./fish.sh
./kitty.sh
./helix.sh
./steam.sh
popd
echo "========== CUSTOMIZING KEYBINDS =========="
pushd ./scripts/niri
./keybinds.sh
popd

echo "========== END =========="