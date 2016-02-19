# RVM
export PATH="$PATH:$HOME/.rvm/bin"

# Paths
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/usr/bin:/bin:/sbin:/usr/games"

# 3rd party binaries, downloaded from random places on the internet
export PATH=$PATH:$HOME/.apps/bin

export GOPATH=$HOME/.go
export GOROOT=/usr/lib/go
export PATH=$PATH:$GOPATH/bin

export PATH=$PATH:$HOME/.dotfiles/bin

# TODO: Put all these applications into a separate install script?
# Git Cola!
[ -d ~/dev/clones/git-cola ] && export PATH=$PATH:$HOME/dev/clones/git-cola/bin

# Used by pipsi
export PATH=$PATH:$HOME/.local/bin

# export PATH=$PATH:/home/dufferzafar/apps/utils
# export MANPATH=$MANPATH:/home/dufferzafar/Apps/manpages
# export MANPATH="/usr/local/man:$MANPATH"

export FPP_EDITOR=subl

# I <3 256 bits colors
export TERM=xterm-256color

# mitmproxy requires this
export LANG=en_US.UTF-8

# asciinema wants this
export LC_ALL=en_IN.UTF-8
export SHELL=/usr/bin/zsh

# I have some custom scripts here:
# https://github.com/dufferzafar/.python
export PYTHONPATH=$PYTHONPATH:$HOME/.python

# fzf - fuzzy file finder
export FZF_DEFAULT_COMMAND='ag -l -g ""'
export FZF_DEFAULT_OPTS="--extended --cycle --multi"

export NVM_DIR=~/.nvm
