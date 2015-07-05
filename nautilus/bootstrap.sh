# Bootstrapper for Nautilus
#
# Includes a custom keymap, and some scripts.

# Get script's folder
# http://stackoverflow.com/a/246128
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Nautilus Directories
SCRIPTS_DIR=~/.local/share/nautilus/scripts
CONFIG_DIR=~/.config/nautilus

# Installs a script by linking, and making the target an executable
link() {
    ln -sf      "$DIR/scripts/$1"            $SCRIPTS_DIR/"$3"
    #                          │                            │
    # local file ──────────────┘                            │
    # the way it will appear in the nautilus context-menu ──┘

    chmod +x $SCRIPTS_DIR/"$3"
}

# Make sure the target directory exists
mkdir -p $CONFIG_DIR

# Clean up the scripts directory
mkdir -p $SCRIPTS_DIR
rm -rf $SCRIPTS_DIR/*

# Link keymap
ln -sf "$DIR/nautilus/accels" $CONFIG_DIR/accels

# The word 'as' is just to make the sentence look cool :)
link terminal as "Open Terminal"
link hide as "Hide File"
link subtitle as "Download Subtitle"
link sublime  as "Open With Sublime"
