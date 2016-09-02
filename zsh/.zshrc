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

# Environment Variables & PATHs
source $dot/zsh/env.zsh

# Use OSX Stuff if we're running on a Mac
if [ "$(uname)" = "Darwin" ]; then
	source $dot/zsh/osx.zsh
fi

# Ruby Version Manager
[ -s ~/.rvm/scripts/rvm ] && source ~/.rvm/scripts/rvm && rvm use 1.9.3 >/dev/null 2>&1

# Go Version Manager
[ -s ~/.gvm/scripts/gvm ] && source ~/.gvm/scripts/gvm && gvm use 1.5  >/dev/null 2>&1

# Node Version Manager
[ -s ~/.nvm/nvm.sh ] && source ~/.nvm/nvm.sh && nvm use stable >/dev/null 2>&1

# Autojump - https://github.com/wting/autojump
# to easily navigate directories from the command-line
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh

# Custom Aliases
source $dot/zsh/aliases.zsh
source $dot/zsh/aliases.git.zsh

# COMPLETION SETTINGS
# add custom completion scripts
fpath=(~/.dotfiles/zsh/completion $fpath)

# Completion System initialization
autoload -U compinit
compinit -u

# Show completion menu when number of options is at least 2
zstyle ':completion:*' menu select=2

# Don't share history among open zsh sessions (terminal tabs)
setopt nosharehistory

# Kill entire arguments on pressing Ctrl + W
autoload -U select-word-style
select-word-style s
# select-word-style n

# Core Zsh file
source "$ZSH/oh-my-zsh.sh"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
