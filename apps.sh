# Get script's folder
# http://stackoverflow.com/a/246128
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Facebook Path Picker
chmod +x $DIR/apps/fpp/fpp
ln -sf $DIR/apps/fpp/fpp /usr/local/bin/fpp
