# Get script's folder
# http://stackoverflow.com/a/246128
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Git
ln -sf "$DIR/git/.gitconfig" ~/.gitconfig
ln -sf "$DIR/git/.gitignore" ~/.gitignore
ln -sf "$DIR/git/.gitattributes" ~/.gitattributes

# Ranger
mkdir -p ~/.config/ranger
for file in $DIR/ranger/*; do
    ln -sf "$file" ~/.config/ranger/"${file##*/}"
done

# Nautilus
source "$DIR/nautilus/bootstrap.sh"

# Screencloud
mkdir -p ~/.config/screencloud
ln -sf "$DIR/screencloud/ScreenCloud.conf" ~/.config/screencloud/ScreenCloud.conf

# Pidgin
mkdir -p ~/.purple
for file in $DIR/pidgin/*; do
    ln -sf "$file" ~/.purple/"${file##*/}"
done

# pip
mkdir -p ~/.pip
ln -sf "$DIR/pip/pip.conf" ~/.pip/pip.conf

# cheat
ln -sf "$DIR/cheat/.cheatrc" ~/.cheatrc

# Vim
ln -sf "$DIR/vim/.vimrc" ~/.vimrc
mkdir -p ~/.vim/colors
ln -sf "$DIR/vim/monokai.vim" ~/.vim/colors/monokai.vim

# Wget
ln -sf "$DIR/wget/.wgetrc" ~/.wgetrc

# Screen
ln -sf "$DIR/screen/.screenrc" ~/.screenrc

# jrnl
ln -sf "$DIR/jrnl/.jrnl_config" ~/.jrnl_config

# the silver searcher
ln -sf "$DIR/ag/.agignore" ~/.agignore

# ptpython
mkdir -p ~/.ptpython
ln -sf "$DIR/python/ptpython.py" ~/.ptpython/config.py

exit
########################################### The End

# Zsh
# wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
rm ~/.zshrc
ln -sf "$DIR/zsh/.zshrc" ~/.zshrc

# Neobundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
