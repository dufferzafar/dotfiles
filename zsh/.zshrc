# Path to your oh-my-zsha installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="af-magic"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git pip node npm pep8 python pylint pyenv terminator colored-man zsh-syntax-highlighting)

# Core Zsh file
source "$ZSH/oh-my-zsh.sh"

local dot=~/.dotfiles

# Copies text to clipboard
source $dot/zsh/cb.zsh

# Rupa's Z
source $dot/zsh/z.sh

# Silly hacks
source $dot/zsh/hacks.zsh

# Cool functions
source $dot/zsh/functions.zsh

# Custom Aliases
source $dot/zsh/aliases.zsh
source $dot/zsh/aliases.git.zsh

source $dot/zsh/screen.zsh

# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
if [[ -f "$HOME/.rvm/scripts/rvm" ]]; then
    source "$HOME/.rvm/scripts/rvm"
fi


# Paths
export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"

export GOPATH=$HOME/.go
export GOROOT=/usr/lib/go
export PATH=$PATH:$GOPATH/bin

export PATH=$PATH:$HOME/.dotfiles/bin

export PIP_DOWNLOAD_CACHE=$HOME/.cache/pip/

# export PATH=$PATH:/home/dufferzafar/apps/utils
# export MANPATH=$MANPATH:/home/dufferzafar/Apps/manpages
# export MANPATH="/usr/local/man:$MANPATH"

export FPP_EDITOR=subl

# I <3 256 bits colors
export TERM=xterm-256color
