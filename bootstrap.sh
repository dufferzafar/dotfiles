# Get script's folder
# http://stackoverflow.com/a/246128
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Git
ln -sf "$DIR/.gitconfig" ~/.gitconfig
ln -sf "$DIR/.gitignore" ~/.gitignore
ln -sf "$DIR/.gitattributes" ~/.gitattributes

# Ranger
mkdir -p ~/.config/ranger
for file in $DIR/ranger/*; do
    ln -sf "$file" ~/.config/ranger/"${file##*/}"           # gives basename of file
done

# mpv
mkdir -p ~/.config/mpv
ln -sf "$DIR/mpv/mpv.conf" ~/.config/mpv/mpv.conf
ln -sf "$DIR/mpv/input.conf" ~/.config/mpv/input.conf

# cheat
ln -sf "$DIR/.cheatrc" ~/.cheatrc

# tmux
ln -sf "$DIR/.tmux.conf" ~/.tmux.conf

# Vim
ln -sf "$DIR/vim/.vimrc" ~/.vimrc
mkdir -p ~/.vim/colors
ln -sf "$DIR/vim/monokai.vim" ~/.vim/colors/monokai.vim

# jrnl
ln -sf "$DIR/.jrnl_config" ~/.jrnl_config

# Supercat
mkdir -p ~/.spcrc
for file in $DIR/spc/spcrc*; do
    ln -sf "$file" ~/.spcrc/"${file##*/}"
done

# the silver searcher
ln -sf "$DIR/.agignore" ~/.agignore

# ptpython
mkdir -p ~/.ptpython
ln -sf "$DIR/.ptpython.py" ~/.ptpython/config.py

# KDE related stuff
KDE=~/.local/share/kservices5/
mkdir -p "$KDE/ServiceMenus"
for file in $DIR/kde/service-menus/*; do
    ln -sf "$file" $KDE/ServiceMenus/"${file##*/}"
done

exit

# firefox
FF=~/.mozilla/firefox/*.default
# mkdir -p "$FF/chrome"
# $(cd ff && git pull shadowfox)
ln -sf "$DIR/firefox/chrome/userChrome.css" $FF/chrome/
ln -sf "$DIR/firefox/chrome/userContent.css" $FF/chrome/

########################################### The End

# Zsh
# wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
rm ~/.zshrc
ln -sf "$DIR/zsh/.zshrc" ~/.zshrc

# Neobundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
