# Path to your oh-my-zsha installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="af-magic"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git pip node npm pep8 python pylint pyenv terminator colored-man zsh-syntax-highlighting)

# Core Zsh file
source $ZSH/oh-my-zsh.sh

# Copies text to clipboard
source ~/.dotfiles/zsh/cb.zsh

# Rupa's Z
source ~/.dotfiles/zsh/z.sh

# Silly hacks
source ~/.dotfiles/zsh/hacks.zsh

# Cool functions
source ~/.dotfiles/zsh/functions.zsh

# Custom Aliases
source ~/.dotfiles/zsh/aliases.zsh

# Paths
export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

export PIP_DOWNLOAD_CACHE=$HOME/.cache/pip/

# export PATH=$PATH:/home/dufferzafar/apps/utils
# export MANPATH=$MANPATH:/home/dufferzafar/Apps/manpages
# export MANPATH="/usr/local/man:$MANPATH"

