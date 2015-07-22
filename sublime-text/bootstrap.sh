# Simple bootstrapper for Sublime Text 3

# Comment out whatever things you don't need.

# Just in case :)
mkdir -p ~/.config/sublime-text-3

# Get script's folder
# http://stackoverflow.com/a/246128
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Makes a soft link from src to dest in sublime's config
# but first makes sure that the target directory exists.
link() {
    mkdir -p "$(dirname ~/.config/sublime-text-3/"$1")"
    ln -sf "$DIR/$1" ~/.config/sublime-text-3/"$1"
}

######################################################### Core Preferences

link "Packages/User/Preferences.sublime-settings"
link "Packages/User/Package Control.sublime-settings"

########################################################## Key & Mousemaps

link "Packages/User/Default (Linux).sublime-keymap"
link "Packages/User/Default (Windows).sublime-keymap"

################################################################ Languages

# Comment character for Batch File
link "Packages/Batch File/Comments.tmPreferences"
