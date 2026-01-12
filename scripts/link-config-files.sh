#!/bin/bash

# ========== NIRI ==========
# rename the niri config file if it exists
NIRI_FILE_PATH="$HOME/.config/niri/config.kdl"
NIRI_FILE_PATH_BACKUP="$HOME/.config/niri/config.kdl.backup"
if [ -L $NIRI_FILE_PATH ]; then
    echo "- niri config file found at $NIRI_FILE_PATH"
    # make sure it's not our file
    if grep -q "bazinga" $NIRI_FILE_PATH; then
        # just delete it
        echo "- our niri file was found! deleting it..."
        rm $NIRI_FILE_PATH
    else
        echo "- our niri file was not found"
        echo "- creating backup of the niri config file at $NIRI_FILE_PATH_BACKUP"
        mv $NIRI_FILE_PATH $NIRI_FILE_PATH_BACKUP
    fi
else
    echo "- niri config file was not found"
fi

# create a symlink for our niri config
echo "- symlinking our niri config file to path $NIRI_FILE_PATH"
NIRI_REAL_PATH=$(realpath ../niri-config.kdl)
ln -s $NIRI_REAL_PATH $NIRI_FILE_PATH

# ========== HELIX ==========

# ========== KITTY ==========
KITTY_FILE_PATH="$HOME/.config/kitty/kitty.conf"
KITTY_FILE_PATH_BACKUP="$HOME/.config/kitty/kitty.conf.backup"
if [ -L $KITTY_FILE_PATH ]; then
    echo "- kitty config file found at $NIRI_FILE_PATH"
    if [ -f $KITTY_FILE_PATH_BACKUP ]; then
        echo "- deleting backup file"
        rm $KITTY_FILE_PATH_BACKUP
    fi
    echo "- creating backup of the kitty config file at $KITTY_FILE_PATH_BACKUP"
    mv $KITTY_FILE_PATH $KITTY_FILE_PATH_BACKUP
else
    echo "- kitty config file was not found"
fi

# create a symlink for our kitty config
echo "- symlinking our kitty config file to path $KITTY_FILE_PATH"
KITTY_REAL_PATH=$(realpath ../kitty.conf)
ln -s $KITTY_REAL_PATH $KITTY_FILE_PATH