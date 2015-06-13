alias ga="git add "
alias gap="git add -p"
alias gau="git add -u"

alias gb="git branch -v"

alias gbb="git bisect bad"
alias gbg="git bisect good"
alias gbr="git bisect reset"

alias gc="git commit "
alias gcm="git commit --amend"

alias gch="git checkout "
alias gchm="git checkout master"

alias gcl="git clone"
alias gcld="git clone --depth 1"

alias gcpk="git cherry-pick -n"

alias gd="git diff "
alias gdc="git diff --cached"
alias gdf="git diff --full-index"

alias gf="git fetch "
alias gfu="git fetch upstream && git rebase upstream/master"

alias gg="git grep --break --heading --line-number"

# alias gl="git log --date=short --pretty=format:'%C(bold blue)%h%C(reset) %<|(35)%ar %<(70,mtrunc) %s %d'" -n 20
alias gl="git --no-pager log --date=short --pretty=format:'%C(red)%h%C(reset) - %C(green)%<|(22,mtrunc)%ar%C(reset)  -   %C(white)%<(80,mtrunc)%s%C(reset) %C(yellow)%<(30,trunc)%d%C(reset)' -n 20"

alias gla="git log --date=short --pretty=format:'%C(auto) %<(18,trunc) %an %<|(35) %ar %<(70,mtrunc) %s %d' -n 20"
alias glc="git log --format=%B "
alias gll="git log --date=short --pretty=format:\"%C(auto) %h %ad %<|(35)%ar %<(70,mtrunc) %s %d\""
alias glu="git log --graph --abbrev-commit --decorate --date=relative --format=format:\"%C(blue)%h%C(reset) - %C(green)%ar%C(reset) - %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(yellow)%d%C(reset)\" --all"

alias gm="git merge --squash "

alias gp="git push"
alias gpl="git pull"
gpb() {
    git push --set-upstream origin "$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
}

alias gr="git reset HEAD"
alias grb="git rebase master"
alias grbi="git rebase -i master"
alias grbc="git rebase --continue"
alias grbs="git rebase --skip"

alias gru="git remote update"

alias gs="git status"

alias gsl="git shortlog -n -s"

alias gst="git stash "
alias gsa="git stash apply"
alias gsp="git stash pop"
alias gstl="git stash list"


alias gwhat="git whatchanged --oneline"
