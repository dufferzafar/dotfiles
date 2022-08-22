# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

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

# Custom Aliases
source $dot/zsh/aliases.zsh
source $dot/zsh/aliases.git.zsh

# Work Profile @ Tower Research Capital, India
source $dot/work/tower.zsh

# =============================================================================
#                            Zsh Completion Settings
# =============================================================================

# add custom completion scripts
# [ -d /spare/ssd/szafar/apps/completions ] && fpath=(/spare/ssd/szafar/apps/completions $fpath)

# Completion System initialization
# autoload -U compinit
# compinit -u

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done

compinit -C

# Show completion menu when number of options is at least 2
# zstyle ':completion:*' menu select=2

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

ZSH_THEME="powerlevel10k/powerlevel10k"

# Load default oh-my-zsh plugins (~/.oh-my-zsh/plugins/*)
plugins=(
	colored-man-pages 
	command-not-found
	autoupdate conda
	node npm rsync
	fd ripgrep zoxide
	gh gitignore
	magic-enter
	python pip pep8 pylint pyenv
	zsh-syntax-highlighting zsh-completions
	# zsh-interactive-cd
	# zsh-autocomplete
	history-substring-search
	zoxide brew fzf
)

# Core Zsh file
source "$ZSH/oh-my-zsh.sh"

# =============================================================================
#                Settings that should be loaded after oh-my-zsh
# =============================================================================

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh 2> /dev/null
# [ -d /usr/share/fzf ] && source "/usr/share/fzf/completion.zsh" 2> /dev/null
# [ -d /usr/share/fzf ] && source "/usr/share/fzf/key-bindings.zsh" 2> /dev/null

# OPAM (Ocaml Package Manager) configuration
# . /home/dufferzafar/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Don't share history among open zsh sessions (terminal tabs)
# https://stackoverflow.com/a/24876841
unsetopt share_history

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

source /apps/infrafs2/szafar/.config/broot/launcher/bash/br

#function jog {
#  grep -v "jog" ~/.zsh_history_ext | grep -a --color=never "${PWD}   " | cut -f1 -d"⋮" | tail
#   grep -v "jog" ~/.zsh_history_ext | grep -a --color=never "${PWD}   " | cut -f1 -d"⋮" | grep -v -e '^$' | tail | sort | uniq
#}

#function zshaddhistory() {
#  echo "${1%%$'\n'}⋮${PWD}   " >> ~/.zsh_history_ext
#}

# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


