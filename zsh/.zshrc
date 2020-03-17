# https://htr3n.github.io/2018/07/faster-zsh/

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
# eval "$(jump shell zsh)"

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
# ZSH_THEME="duffer"
# ZSH_THEME="spaceship"
ZSH_THEME="powerlevel10k/powerlevel10k"

# https://github.com/denysdovhan/spaceship-prompt/blob/master/docs/Options.md
SPACESHIP_PROMPT_ORDER=(
  user dir host git
#   line_sep
#   battery vi_mode jobs
  exit_code char
)
SPACESHIP_RPROMPT_ORDER=(exec_time venv conda pyenv time)

SPACESHIP_CONDA_VERBOSE="false"
SPACESHIP_CONDA_COLOR="green"


SPACESHIP_DIR_COLOR=012
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_PREFIX="| "
SPACESHIP_TIME_COLOR=245
SPACESHIP_TIME_FORMAT="%D{%I:%M:%S}"

SPACESHIP_DIR_TRUNC_REPO=true

SPACESHIP_GIT_PREFIX="("
SPACESHIP_GIT_SYMBOL=""
SPACESHIP_GIT_SUFFIX=") "
SPACESHIP_GIT_BRANCH_COLOR=white
SPACESHIP_GIT_STATUS_SHOW=false

# SPACESHIP_VENV_PREFIX="venv("
# SPACESHIP_VENV_SUFFIX=") "
SPACESHIP_VENV_COLOR=198

# Use this lua binary for
export ZLUA_EXEC=/spare/local/szafar/.conda/envs/cenv/bin/lua

# Load default oh-my-zsh plugins (~/.oh-my-zsh/plugins/*)
plugins=(
	node npm z.lua
	python pip pep8 pylint pyenv
	docker vagrant
	colored-man-pages command-not-found
	zsh-syntax-highlighting zsh-completions
	history-substring-search
)

# Core Zsh file
source "$ZSH/oh-my-zsh.sh"

# =============================================================================
#                Settings that should be loaded after oh-my-zsh
# =============================================================================

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh 2> /dev/null
[ -d /usr/share/fzf ] && source "/usr/share/fzf/completion.zsh" 2> /dev/null
[ -d /usr/share/fzf ] && source "/usr/share/fzf/key-bindings.zsh" 2> /dev/null

# OPAM (Ocaml Package Manager) configuration
# . /home/dufferzafar/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Don't share history among open zsh sessions (terminal tabs)
# https://stackoverflow.com/a/24876841
unsetopt share_history

# Work Profile @ Tower Research Capital, India
source $dot/work/tower.zsh

# Enable highlighters
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# Override highlighter colors
ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
ZSH_HIGHLIGHT_STYLES[alias]=fg=green
ZSH_HIGHLIGHT_STYLES[builtin]=fg=green
ZSH_HIGHLIGHT_STYLES[function]=fg=green
ZSH_HIGHLIGHT_STYLES[command]=fg=green
ZSH_HIGHLIGHT_STYLES[precommand]=fg=green,underline
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[assign]=none

POWERLEVEL9K_VCS_DISABLED_DIR_PATTERN='/tmp/rs3(|/*)'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
