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

alias gbld="go build"

# Python Tools (living in a virtual environment)
alias beet="~/.apps/appy/2/bin/beet"
alias sub="~/.apps/appy/2/bin/subliminal -l en -- "

alias ytb="youtube-dl -ciw --no-mtime -f 18 --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"
alias ted="youtube-dl -ciw --no-mtime -f medium --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"

alias o="xdg-open"
alias r="ranger"

# Serve a directory
alias pysrv="python3 -m http.server "

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
alias jw="jrnl work"
