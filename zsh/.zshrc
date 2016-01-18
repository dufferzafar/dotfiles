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

# Silly hacks
source $dot/zsh/hacks.zsh

# Cool functions
source $dot/zsh/functions.zsh

# Set screen process/title
source $dot/zsh/screen.zsh

# Environment Variables & PATHs
source $dot/zsh/env.zsh

# RVM
[ -f ~/.rvm/scripts/rvm ] && source ~/.rvm/scripts/rvm

setopt nosharehistory

# Autojump - https://github.com/wting/autojump
# to easily navigate directories from the command-line
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh

# j is the new z, yo!
alias z="j"

# Custom Aliases
source $dot/zsh/aliases.zsh
source $dot/zsh/aliases.git.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# COMPLETION SETTINGS
# add custom completion scripts
fpath=(~/.dotfiles/zsh/completion $fpath)

# compsys initialization
autoload -U compinit
compinit -u

# show completion menu when number of options is at least 2
zstyle ':completion:*' menu select=2
