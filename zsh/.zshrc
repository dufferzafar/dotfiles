# When profiling zsh load times, uncomment this line
# and run "zsh -ic zprof"
# zmodload zsh/zprof

local dot=~/.dotfiles

# Copies text to clipboard
# Already provided by .oh-my-zsh clipcopy, clippaste
# source $dot/zsh/cb.zsh

# Silly hacks
source $dot/zsh/hacks.zsh

# Cool functions
source $dot/zsh/functions.zsh
source $dot/zsh/fzf.zsh

# Environment Variables & PATHs
# TODO: Rename this file to .zshenv and setup link
source $dot/zsh/env.zsh

# Use OSX Stuff if we're running on a Mac
if [ "$(uname)" = "Darwin" ]; then
	source $dot/zsh/osx.zsh
fi

# Ruby Version Manager
# [ -s ~/.rvm/scripts/rvm ] && source ~/.rvm/scripts/rvm && rvm use 1.9.3 >/dev/null 2>&1

# Go Version Manager
# [ -s ~/.gvm/scripts/gvm ] && source ~/.gvm/scripts/gvm && gvm use 1.8.3  >/dev/null 2>&1

# Node Version Manager
# [ -s ~/.nvm/nvm.sh ] && source ~/.nvm/nvm.sh && nvm use stable >/dev/null 2>&1

# Autojump - https://github.com/wting/autojump
# to easily navigate directories from the command-line
# [[ -s /etc/profile.d/autojump.zsh ]] && source /etc/profile.d/autojump.zsh

# jump - https://github.com/gsamokovarov/jump
# Has better matching (fuzzy) than autojump
eval "$(jump shell zsh)"

# Custom Aliases
source $dot/zsh/aliases.zsh
source $dot/zsh/aliases.git.zsh

# =============================================================================
#                            Zsh Completion Settings
# =============================================================================

# add custom completion scripts
fpath=($dot/zsh/completion $fpath)

# Completion System initialization
autoload -U compinit
compinit -u

# Show completion menu when number of options is at least 2
zstyle ':completion:*' menu select=2

# Kill entire arguments on pressing Ctrl + W
autoload -U select-word-style
select-word-style s
# select-word-style n

# Special shellcharacters to be quotes automatically in URLs
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

# =============================================================================
#                                Load Oh My Zsh
# =============================================================================

# Path to oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# My Custom Theme
ZSH_THEME="duffer"

# Load default oh-my-zsh plugins (~/.oh-my-zsh/plugins/*)
plugins=(node npm python pip pep8 pylint pyenv docker vagrant terminator colored-man command-not-found zsh-syntax-highlighting history-substring-search zsh-completions)

# Core Zsh file
source "$ZSH/oh-my-zsh.sh"

# =============================================================================
#                   Settings that should be loaded after zsh
# =============================================================================

# fzf
[ -d /usr/share/fzf ] && source "/usr/share/fzf/completion.zsh" 2> /dev/null
[ -d /usr/share/fzf ] && source "/usr/share/fzf/key-bindings.zsh" 2> /dev/null

# OPAM (Ocaml Package Manager) configuration
# . /home/dufferzafar/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Don't share history among open zsh sessions (terminal tabs)
# https://stackoverflow.com/a/24876841
unsetopt share_history
