# Path to oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# My Custom Theme
ZSH_THEME="duffer"

# Load default oh-my-zsh plugins (~/.oh-my-zsh/plugins/*)
plugins=(pip node npm pep8 python pylint pyenv terminator colored-man zsh-syntax-highlighting history-substring-search command-not-found zsh-completions)

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

# Ruby Version Manager
[ -f ~/.rvm/scripts/rvm ] && source ~/.rvm/scripts/rvm && rvm use 1.9.3 >/dev/null 2>&1

# Go Version Manager
[ -f ~/.gvm/scripts/gvm ] && source ~/.gvm/scripts/gvm && gvm use 1.5  >/dev/null 2>&1

# Node Version Manager
[ -s ~/.nvm/nvm.sh ] && source ~/.nvm/nvm.sh && nvm use v5 >/dev/null 2>&1

# Autojump - https://github.com/wting/autojump
# to easily navigate directories from the command-line
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh

# Custom Aliases
source $dot/zsh/aliases.zsh
source $dot/zsh/aliases.git.zsh

# Core Zsh file
source "$ZSH/oh-my-zsh.sh"

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

# Don't share history among open zsh sessions (terminal tabs)
setopt nosharehistory
