# Get script's folder
# http://stackoverflow.com/a/246128
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Git
ln -s $DIR/git/.gitconfig ~/.gitconfig
ln -s $DIR/git/.gitignore ~/.gitignore

exit
########################################### The End

# Zsh (I've started using Fish now)
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
rm ~/.zshrc
ln -s $DIR/zsh/.zshrc ~/.zshrc
