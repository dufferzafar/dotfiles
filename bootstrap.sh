# Get script's folder
# http://stackoverflow.com/a/246128
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Git
ln -sf $DIR/git/.gitconfig ~/.gitconfig
ln -sf $DIR/git/.gitignore ~/.gitignore

# Nemo
mkdir -p ~/.gnome2/accels
mkdir -p ~/.gnome2/nemo-scripts

ln -sf $DIR/nemo/nemo ~/.gnome2/accels/nemo
ln -sf $DIR/nemo/terminal ~/.gnome2/nemo-scripts/terminal

exit
########################################### The End

# Zsh (I've started using Fish now)
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
rm ~/.zshrc
ln -sf $DIR/zsh/.zshrc ~/.zshrc
