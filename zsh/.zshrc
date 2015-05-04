# Path to your oh-my-zsha installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git pip node npm pep8 python pylint pyenv terminator colored-man zsh-syntax-highlighting)

# User configuration

export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source ~/.dotfiles/zsh/cb.zsh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# export PATH=$PATH:/home/dufferzafar/apps/utils
# export MANPATH=$MANPATH:/home/dufferzafar/Apps/manpages

alias ga="git add -A"
# alias gac="git add -A :/ $T git commit -e
# alias gacm="git add -A :/ $T git commit -m
alias gau="git add -u"

alias gb="git branch -v"

alias gbb="git bisect bad"
alias gbg="git bisect good"
alias gbr="git bisect reset"

alias gc="git commit "
alias gch="git checkout "
alias gchm="git checkout master"
alias gcm="git commit --amend"
alias gcount="git rev-list HEAD --count"

alias gd="git diff -w "
alias gdc="git diff -w --cached"
alias gdf="git diff -w --full-index"

alias gf="git fetch "
# gfu="git fetch upstream $T git rebase upstream/master"

alias gg="git grep"

# alias gl="git log --date=short --pretty=format:'%C(bold blue)%h%C(reset) %<|(35)%ar %<(70,mtrunc) %s %d'" -n 20
alias gl="git --no-pager log --date=short --pretty=format:'%C(red)%h%C(reset) - %C(green)%<|(22,mtrunc)%ar%C(reset)  -   %C(white)%<(80,mtrunc)%s%C(reset) %C(yellow)%<(30,trunc)%d%C(reset)' -n 20"



alias gla="git log --date=short --pretty=format:'%C(auto) %<(18,trunc) %an %<|(35) %ar %<(70,mtrunc) %s %d' -n 20"
alias glc="git log --format=%B "
alias gll="git log --date=short --pretty=format:\"%C(auto) %h %ad %<|(35)%ar %<(70,mtrunc) %s %d\""
alias glu="git log --graph --abbrev-commit --decorate --date=relative --format=format:\"%C(blue)%h%C(reset) - %C(green)%ar%C(reset) - %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(yellow)%d%C(reset)\" --all"
alias gm="git merge --squash "

alias gp="git push"
alias gpl="git pull"

alias gpb="git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD 2>/dev/null)"

alias gpm="git push origin master"
alias gps="git push origin source"

alias gr="git reset HEAD"
alias grb="git rebase master"
alias grbi="git rebase -i master"
alias grbc="git rebase --continue"
alias grbs="git rebase --skip"
alias gru="git remote update"

alias gs="git status"
alias gsa="git stash apply"
alias gsl="git shortlog -n -s"
alias gsp="git stash pop"
alias gst="git stash "
alias gstl="git stash list"

alias gwhat="git whatchanged --oneline"

# Virtualenv Thingies!
alias py="python"
alias py2="python2"
alias py3="python3"
alias epy="env/bin/python"
alias epip="env/bin/pip"
alias ebpy="env/bin/bpython"
alias efab="env/bin/fab"

# Misc. Utilities
alias du="du -hd 1"

# Python Tools (living in a virtual environment)
alias beet="~/.apps/appy/2/bin/beet"
alias sub="~/.apps/appy/2/bin/subliminal -l en -- "

alias ytb="youtube-dl -c -i -w --no-mtime -f 18 --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"
alias ted="youtube-dl -c -i -w --no-mtime -f medium --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"

alias r="ranger"

export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
export PIP_DOWNLOAD_CACHE=$HOME/.cache/pip/

# http://stackoverflow.com/a/14864141
PROMPT_EOL_MARK=''

export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;40:ow=01;34:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:';

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

google() {
    search=""
    echo "Googling: $@"
    for term in $@; do
        search="$search%20$term"
    done
    xdg-open "http://www.google.com/search?q=$search"
}
