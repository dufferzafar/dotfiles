# RVM
export PATH="$PATH:$HOME/.rvm/bin"

# Paths
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/usr/bin:/bin:/sbin:/usr/games"

# 3rd party binaries, downloaded from random places on the internet
export PATH=$PATH:$HOME/.apps/bin
export MANPATH=$MANPATH:$HOME/.apps/.manpages

export GOPATH=$HOME/.go
export GOROOT=/usr/lib/go
export PATH=$PATH:$GOPATH/bin

# https://gitlab.com/dufferzafar/scripts
export PATH=$PATH:$HOME/.scripts

# Used by pipsi
export PATH=$PATH:$HOME/.local/bin

# Rust & Cargo
export PATH="$HOME/.cargo/bin:$PATH"

# Syntax highlighting in less
# TODO: Use monokai syntax highlight
export LESSOPEN="| /apps/infrafs2/szafar/.dotfiles/ranger/scope.sh %s"
export LESS=' -R '

# export FPP_EDITOR=subl

# Make vim the default editor
export EDITOR="vim"

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

# Apache Hadoop & Spark
# export SPARK_HOME=~/.apps/spark
# export HADOOP_HOME=~/.apps/hadoop
# export LD_LIBRARY_PATH=$HADOOP_HOME/lib/native/:$LD_LIBRARY_PATH
