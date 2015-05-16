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

alias gbld="go build"

# Python Tools (living in a virtual environment)
alias beet="~/.apps/appy/2/bin/beet"
alias sub="~/.apps/appy/2/bin/subliminal -l en -- "

alias ytb="youtube-dl -c -i -w --no-mtime -f 18 --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"
alias ted="youtube-dl -c -i -w --no-mtime -f medium --restrict-filenames -o '~/Videos/%(title)s.%(ext)s'"

alias o="xdg-open"
alias r="ranger"

# cheat!
ce() {
    ( cd /mnt/Work/Github/cheat && cheat edit $1 )
}
cs() {
    ( cd /mnt/Work/Github/cheat && cheat show $1 | less )
}
cc() {
    ( cd /mnt/Work/Github/cheat && cheat show $1 --copy $2 )
}
