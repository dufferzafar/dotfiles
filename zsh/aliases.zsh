
#####################################################################

# Python
alias py="python"
alias py2="python2"
alias py3="python3"
alias ptpy="ptpython"

# Virtualenv
alias venv="virtualenv"
# Python 2 venv
alias eac="source env/bin/activate"
alias epy="env/bin/python"
alias epip="env/bin/pip"
# Python 3 venv
alias vpy="venv/bin/python"
alias vpip="venv/bin/pip"

# Serve a directory
# TODO: Use devd?
alias pysrv="python3 -m http.server "

#####################################################################

# https://github.com/Diaoul/subliminal
alias sub="subliminal download -l en -- "

# https://github.com/rg3/youtube-dl/
alias ytb="youtube-dl -ciw --no-mtime -f 18 --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"
alias ytbdl="youtube-dl -ciw --no-mtime -f '(mp4)[height<720]' --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"
alias ytmp3="youtube-dl -ciw --no-mtime --format=bestaudio --extract-audio --audio-format=mp3 --audio-quality=0 -o '~/Music/%(title)s.%(ext)s'"

#####################################################################

# cheat!
ce() {
    ( cd /mnt/Work/Github/cheat && cheat edit "$1" )
}
cs() {
    ( cd /mnt/Work/Github/cheat && cheat show "$1" | less )
}
cc() {
    ( cd /mnt/Work/Github/cheat && cheat show "$1" --copy "$2" )
}

# Quick Ping!
alias pingu="ping 8.8.8.8"

# Learn about a random command, whenever you feel like it.
# Copied from: http://askubuntu.com/a/337382/415634
bored() {
    cowsay -f $(ls /usr/share/cowsay/cows | shuf -n 1 | cut -d. -f1) $(whatis $(ls /bin | shuf -n 1) 2>/dev/null)
}

# jrnl
alias jl="jrnl life"
alias ji="jrnl idea"
alias jie="jrnl idea --edit -n 1"
alias jw="jrnl work"
alias jc="jrnl code"

# apt-get
alias aptg='sudo apt-get'
alias apti='sudo apt-get install'
alias aptp='sudo apt-get purge'
alias aptr='sudo apt-get remove'
alias aptrp='sudo apt-get autoremove --purge'

apts() {
    apt-cache show "$@" | less -p "Description"
}

# Misc.
dus() {
    du -hs "$1" 2>/dev/null
}
du() {
    du --apparent-size -hd 1 "$@" | sort -rh
}
alias gbld="go build"
alias o="xdg-open"
alias r="ranger"

#####################################################################

# Create an alias only if the destination exists
alia () {
    [[ -f $2 ]] && alias $1=$2
}

# Anaconda
local anaconda=~/.apps/anaconda3/bin
alia apy  $anaconda/python
alia apip $anaconda/pip
alia aipy $anaconda/ipython

# https://github.com/richrd/suplemon
alia supl ~/dev/clones/suplemon/suplemon.py

# http://github.com/dufferzafar/netuse
alia netuse ~/dev/netuse/netuse.py

# https://github.com/laurent22/massren
alia massren ~/dev/clones/massren/massren

# https://github.com/musicbrainz/picard/
alia picard ~/.apps/picard/tagger.py

#####################################################################

# Use locate to find files
loki() {
    locate -e -i "$@" | fzf
}

# Use the silversearcher to find text!
agf() {
    ag -C 2 --color --group $@ | less -R
}

# Taken from: https://github.com/jkbrzt/httpie#redirected-output
httpless() {
    http --pretty=all --print=hb "$@" | less -R
}

curless() {
    curl -q -i -s "$@" | less -R
}

# Pass a request through mitmproxy!
httm() {
    http --proxy=http:http://localhost:8080 --proxy=https:http://localhost:8080 "$@" >/dev/null
}

ncm() {
    printf "$1" | nc localhost 8080 >/dev/null
}

# https://www.gitignore.io/docs#install-command-line-linux
gio() {
    curl -L -s https://www.gitignore.io/api/"$@"
}
