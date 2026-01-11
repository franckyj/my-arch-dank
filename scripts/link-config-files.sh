# ========== NIRI ==========
# rename the niri config file if it exists
NIRI_FILE_PATH = "~/.config/niri/config.kdl"
NIRI_FILE_PATH_BACKUP = "~/.config/niri/config.kdl.backup"
if [ -e $NIRI_FILE_PATH ]; then
    # make sure it's not our file
    if grep -q "bazinga" $NIRI_FILE_PATH; then
        # just delete it
        rm $NIRI_FILE_PATH
    else
        echo "String not found!"
    fi
    cp $NIRI_FILE_PATH $NIRI_FILE_PATH_BACKUP
else
    echo "File does not exist."
fi

# create a symlink for our niri config
ln -s ../niri-config.kdl $NIRI_FILE_PATH

# ========== HELIX ==========

# ========== KITTY ==========