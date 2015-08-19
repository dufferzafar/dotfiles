# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="af-magic"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(pip node npm pep8 python pylint pyenv terminator colored-man zsh-syntax-highlighting history-substring-search command-not-found)

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

# Set screen process/title
source $dot/zsh/screen.zsh

# Environment Variables & PATHs
source $dot/zsh/env.zsh

# RVM
[ -f ~/.rvm/scripts/rvm ] && source ~/.rvm/scripts/rvm

setopt nosharehistory

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
