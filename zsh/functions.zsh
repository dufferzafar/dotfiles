
# Google stuff from the command-line
google() {
    search=""
    echo "Googling: $@"
    for term in "$@"; do
        search="$search%20$term"
    done
    xdg-open "http://www.google.com/search?q=$search"
}

# Explain a shell command and it's params
# https://www.mankier.com/blog/explaining-shell-commands-in-the-shell.html
explain () {
  if [ "$#" -eq 0 ]; then
    while read  -p "Command: " cmd; do
      curl -Gs "https://www.mankier.com/api/explain/?cols="75 --data-urlencode "q=$cmd"
    done
    echo "Bye!"
  elif [ "$#" -eq 1 ]; then
    curl -Gs "https://www.mankier.com/api/explain/?cols="75 --data-urlencode "q=$1"
  else
    echo "Usage"
    echo "explain                  interactive mode."
    echo "explain 'cmd -o | ...'   one quoted command to explain it."
  fi
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
      git status -u .
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

# Open the current folder in user's preferred
# file browser
# Todo: Find a way of focussing the browser too!
ctrl-enter () {
  if [[ -z $BUFFER ]]; then
    xdg-open .
  else
    xdg-open "$BUFFER"
    zle redisplay
  fi
}
zle -N ctrl-enter
bindkey "^J" ctrl-enter

# fzit - fzf based git commit browser (enter for show, ctrl-d for diff, ` toggles sort)
fzit() {
  local out shas sha q k
  while out=$(
      git log --graph --color=always \
          --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
      fzf --ansi --multi --no-sort --reverse --query="$q" \
          --print-query --expect=ctrl-d --toggle-sort=\`); do
    q=$(head -1 <<< "$out")
    k=$(head -2 <<< "$out" | tail -1)
    shas=$(sed '1,2d;s/^[^a-z0-9]*//;/^$/d' <<< "$out" | awk '{print $1}')
    [ -z "$shas" ] && continue
    if [ "$k" = ctrl-d ]; then
      git diff --color=always $shas | less -R
    else
      for sha in $shas; do
        git show --color=always $sha | less -R
      done
    fi
  done
}

pdfpages() {
  for file in "$@"; do
    echo $file
    pdfinfo "$file" | grep -oP '(?<=Pages:          )[ A-Za-z0-9]*'
  done
}

pdf2jpg() {
  for file in "$@"; do
    echo $file "->" "${file%.*}".jpg
    convert -density 200 -trim "$file" -quality 100 "${file%.*}".jpg
  done
}

jpg2pdf() {
  for file in "$@"; do
    echo $file "->" "${file%.*}".pdf
    convert -density 200 -trim "$file" -quality 100 "${file%.*}".pdf
  done
}

pdfex() {
  qpdf --linearize "$1" --pages "$1" "$2-$3" -- "$4"
}

# Make that prefers my custom files!
make() {
  if [[ "$1" != "-f" && -f Makefile.dzmake ]]; then
    /usr/bin/make -f Makefile.dzmake "$@"
  else
    /usr/bin/make "$@"
  fi
}

# Functions for testing mitmproxy
run_pytest() {
  if [[ $1 == "--cov" ]]; then
    cov=$(echo "--cov mitmproxy --cov pathod --cov netlib --cov-report html")
    shift 1
  else
    cov=""
  fi

  $py -m pytest -s -v --color=yes ${cov} $* 2>&1 | less -r
}

pyt3() {
  local py="./venv/bin/python3.5"
  run_pytest $*
}

pyt2() {
  local py="./env/bin/python2.7"
  run_pytest $*
}

# Update a specific repository
update-repo() {
    for source in "$@"; do
        sudo apt-get update -o Dir::Etc::sourcelist="sources.list.d/${source}" \
        -o Dir::Etc::sourceparts="-" -o APT::Get::List-Cleanup="0"
    done
}
