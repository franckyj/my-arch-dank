#!/bin/bash

echo "========== SDL3 =========="
if [ -f /usr/lib/libSDL3.so ]; then
  echo "- SDL3 is installed"
else
  echo "- SDL3 is not installed"
  echo "- installing it..."
  paru -Sy sdl3 sdl3_image sdl3_ttf sdl3_mixer
fi