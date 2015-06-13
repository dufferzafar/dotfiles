
# Google stuff from the command-line
google() {
    search=""
    echo "Googling: $@"
    for term in "$@"; do
        search="$search%20$term"
    done
    xdg-open "http://www.google.com/search?q=$search"
}

# File extractor
# usage: extract <file>
extract ()
{
  if [ -f "$1" ] ; then
    case "$1" in
      *.tar.bz2)   tar xjf "$1"   ;;
      *.tar.gz)    tar xzf "$1"   ;;
      *.bz2)       bunzip2 "$1"   ;;
      *.rar)       unrar x "$1"     ;;
      *.gz)        gunzip "$1"    ;;
      *.tar)       tar xf "$1"    ;;
      *.tbz2)      tar xjf "$1"   ;;
      *.tgz)       tar xzf "$1"   ;;
      *.zip)       unzip "$1"     ;;
      *.Z)         uncompress "$1";;
      *.7z)        7z x "$1"      ;;
      *.snz)       snunzip "$1"      ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Bind quick stuff to enter!
#
# Pressing enter in a git directory runs `git status`
# in other directories `ls`
magic-enter () {
  if [[ -z $BUFFER ]]; then
    echo ""
    if git rev-parse --is-inside-work-tree &>/dev/null; then
      git status .
    else
      ls -CF
    fi
    zle redisplay
  else
    zle accept-line
  fi
}
zle -N magic-enter
bindkey "^M" magic-enter
