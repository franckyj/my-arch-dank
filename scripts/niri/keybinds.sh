#!/bin/bash

# ========== NIRI ==========
# use `dms` to remove and add keybinds for niri
# by default Mod+T spawns the terminal
dms keybinds set niri "Mod+Return" "spawn kitty" \
  --desc "Open terminal" \
  --replace-key "Mod+T"

# remove all the "focus monitors" since this is on a laptop
# Mod+Ctrl+H { focus-monitor-left; }
# Mod+Ctrl+J { focus-monitor-down; }
# Mod+Ctrl+K { focus-monitor-up; }
# Mod+Ctrl+L { focus-monitor-right; }
# Mod+Ctrl+Left { focus-monitor-left; }
# Mod+Ctrl+Right { focus-monitor-right; }
dms keybinds remove niri "Mod+Ctrl+H"
dms keybinds remove niri "Mod+Ctrl+J"
dms keybinds remove niri "Mod+Ctrl+K"
dms keybinds remove niri "Mod+Ctrl+L"
dms keybinds remove niri "Mod+Ctrl+Left"
dms keybinds remove niri "Mod+Ctrl+Right"

# Mod+Shift+Ctrl+Down { move-column-to-monitor-down; }
# Mod+Shift+Ctrl+H { move-column-to-monitor-left; }
# Mod+Shift+Ctrl+J { move-column-to-monitor-down; }
# Mod+Shift+Ctrl+K { move-column-to-monitor-up; }
# Mod+Shift+Ctrl+L { move-column-to-monitor-right; }
# Mod+Shift+Ctrl+Left { move-column-to-monitor-left; }
# Mod+Shift+Ctrl+Right { move-column-to-monitor-right; }
# Mod+Shift+Ctrl+Up { move-column-to-monitor-up; }
# Mod+Shift+Ctrl+Left { move-column-to-monitor-left; }
dms keybinds remove niri "Mod+Shift+Ctrl+Down"
dms keybinds remove niri "Mod+Shift+Ctrl+H"
dms keybinds remove niri "Mod+Shift+Ctrl+J"
dms keybinds remove niri "Mod+Shift+Ctrl+K"
dms keybinds remove niri "Mod+Shift+Ctrl+L"
dms keybinds remove niri "Mod+Shift+Ctrl+Right"
dms keybinds remove niri "Mod+Shift+Ctrl+Up"
dms keybinds remove niri "Mod+Shift+Ctrl+Left"

# remove all the mouse scroll wheel stuff
# Mod+Ctrl+WheelScrollDown cooldown-ms=150 { move-column-to-workspace-down; }
# Mod+Ctrl+WheelScrollUp cooldown-ms=150 { move-column-to-workspace-up; }
# Mod+WheelScrollDown cooldown-ms=150 { focus-workspace-down; }
# Mod+WheelScrollUp cooldown-ms=150 { focus-workspace-up; }
# Mod+Ctrl+Shift+WheelScrollDown { move-column-right; }
# Mod+Ctrl+Shift+WheelScrollUp { move-column-left; }
# Mod+Ctrl+WheelScrollLeft { move-column-left; }
# Mod+Ctrl+WheelScrollRight { move-column-right; }
# Mod+Shift+WheelScrollDown { focus-column-right; }
# Mod+Shift+WheelScrollUp { focus-column-left; }
# Mod+WheelScrollLeft { focus-column-left; }
# Mod+WheelScrollRight { focus-column-right; }
dms keybinds remove niri "Mod+Ctrl+WheelScrollDown"
dms keybinds remove niri "Mod+Ctrl+WheelScrollUp"
dms keybinds remove niri "Mod+WheelScrollDown"
dms keybinds remove niri "Mod+WheelScrollUp"
dms keybinds remove niri "Mod+Ctrl+Shift+WheelScrollDown"
dms keybinds remove niri "Mod+Ctrl+Shift+WheelScrollUp"
dms keybinds remove niri "Mod+Ctrl+WheelScrollLeft"
dms keybinds remove niri "Mod+Ctrl+WheelScrollRight"
dms keybinds remove niri "Mod+Shift+WheelScrollDown"
dms keybinds remove niri "Mod+Shift+WheelScrollUp"
dms keybinds remove niri "Mod+WheelScrollLeft"
dms keybinds remove niri "Mod+WheelScrollRight"

# replace Mod+W to close the window
dms keybinds set niri "Mod+W" "close-window" \
  --desc "Close the window" \
  --no-repeat \
  --replace-key "Mod+W"

# remove all the page_down / page_up stuff
# Mod+Page_Down { focus-workspace-down; }
# Mod+Page_Up { focus-workspace-up; }
# Mod+Shift+Page_Down { move-workspace-down; }
# Mod+Shift+Page_Up { move-workspace-up; }
dms keybinds remove niri "Mod+Page_Down"
dms keybinds remove niri "Mod+Page_Up"
dms keybinds remove niri "Mod+Shift+Page_Down"
dms keybinds remove niri "Mod+Shift+Page_Up"

# remove the "center-column" bind
dms keybinds remove niri "Mod+C"
dms keybinds remove niri "Mod+Ctrl+C"

# create the outputs file with some extra settings
cat ./niri-config-outputs.kdl > $HOME/.config/niri/dms/outputs.kdl