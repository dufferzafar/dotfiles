
# Single letter aliases!
alias g="git"
alias l="ls -lh --group-directories-first"
alias o="xdg-open"
alias p="popd"
alias s="subl"
# alias c=cheat!

alias ca="conda activate"
alias cls="conda info --envs"
alias crm="conda env remove -n"
alias cnew="conda env create -n"

alias goo="googler"

# https://github.com/chubin/cheat.sh#command-line-client-chtsh
alias cs="cht.sh"
c() {
    #                   Remove escape sequences
    cht.sh "$1" | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | bat -l bash
}

cf() {
    #                                                          CLfu requires base64 argument as well
    curl -sL "https://www.commandlinefu.com/commands/matching/$@/$(echo -n $@ | openssl base64)/plaintext" | bat -l bash;
}

cfs () {
    (curl -d "q=$@" https://www.commandlinefu.com/search/autocomplete 2>/dev/null) |
    egrep 'autocomplete|votes|destination' |
    perl -p -e 's/<a style="display:none" class="destination" href="//g;
                s/<[^>]*>//g;
                s/">$/\n-----\n/g;
                s/^ +|\([0-9]+ votes,//g;
                s/^\//http:\/\/commandlinefu.com\//g;
                s/^http:/\# http/g;'  |
    bat -l md
}
# curl -sd q=Network http://www.commandlinefu.com/search/autocomplete | html2text -width 100
# tagged/163/grep

#####################################################################

# hl highlighted versions of the commands
alias df="df -h | hl --df"
alias free="free -g | hl --free"

#####################################################################

# Python
alias py="python"
alias py2="python2"
alias py3="python3.7"
alias ptpy="python3.7 -m ptpython"

alias pipi="pip install --user"

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
alias sub="subliminal download -l en -v -- "

# https://github.com/rg3/youtube-dl/
alias ytb="youtube-dl   -ciw --no-mtime -f 18                  -o '~/Videos/%(title)s.%(ext)s'"
alias ytbdl="youtube-dl -ciw --no-mtime --write-sub -o '~/Videos/%(title)s.%(ext)s'"
alias ytmp3="youtube-dl -ciw --no-mtime -f bestaudio           -o '~/Music/%(title)s.%(ext)s'   --extract-audio --audio-format=mp3 --audio-quality=0 --embed-thumbnail --add-metadata"

# youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 <Video-URL>


#####################################################################

# Quick Ping!
alias pingu="ping 8.8.8.8"

# Learn about a random command, whenever you feel like it.
# Copied from: http://askubuntu.com/a/337382/415634
bored() {
    cowsay -f $(ls /usr/share/cows | shuf -n 1 | cut -d. -f1) $(whatis $(ls /bin | shuf -n 1) 2>/dev/null)
}

# pacman
# https://wiki.archlinux.org/index.php/Pacman/Rosetta
alias paci='sudo pacman -S'
alias pacu='sudo yaourt -Syu --noconfirm'
alias pacr='sudo pacman -R'
alias pacrp='sudo pacman -Rns $(pacman -Qtdq)'

# Update all AUR packages, pronto!
# The traditional advice is to *not* do this because
# AUR PKGBUILDs may be updated and is a potential threat surface
# But life is too short to examine each update carefully.
alias auru='yaourt -Syua --noconfirm'

apts() {
    apt-cache show "$@" | less -p "Description"
}

# Misc.
dus() {
    du --apparent-size -hd 1 "$@" | sort -rh
}

# jump
jcd() {
  j "$(basename $PWD)/**/$@"
}

# jrnl
alias jl="jrnl life"
alias ji="jrnl idea"
alias jie="jrnl idea --edit -n 1"
alias jw="jrnl work"
alias jc="jrnl code"

# Ensure aria does not download files that are already present
alias aria="aria2c -c -x 16 -s 16 --auto-file-renaming=false --allow-overwrite=false --conditional-get=true"

alias po="popd"

#####################################################################

# Create an alias only if the destination exists
alia () {
    [[ -f $2 ]] && alias $1=$2
}

# Anaconda
local anaconda=~/.apps/anaconda3/bin
alia apy $anaconda/python
alia conda $anaconda/conda
alia jupyter $anaconda/jupyter

# https://github.com/dufferzafar/massren
alia massren ~/dev/massren/massren

#####################################################################

# Use the silversearcher to find text!
agf() {
    ag -C 2 --color --group $@ | less -R
}

# Use pdfgrep to find text in PDFs!
pdf-grep() {
    pdfgrep -C 2 -Hni --color always $@ *.pdf | less -R
}

# Useful for exploring JSON
jqless() {
    jq -C "$@" | less -R
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

# $1 is the interface
mac-undo() {
    sudo ifconfig $1 hw ether $(ethtool -P $1 | awk '{print $3}')
}
