# If a param is passed, add that, else add the current folder
function ga {
    if ! [ -z "$1" ]; then
        git add "$@"
    else
        git add .
    fi
}
alias gai="git add --intent-to-add"
alias gap="git add -p"
alias gau="git add -u ."

alias gb="git branch -vv"

# Go to the previously checked out branch
alias gbk="git checkout -"

alias gbb="git bisect bad"
alias gbg="git bisect good"
alias gbr="git bisect reset"

# Alert when git date environment has been set.
function gc {
    if ! [ -z $GIT_COMMITTER_DATE ]; then
        read "response?Git date environment set to: $GIT_COMMITTER_DATE. Continue? [y/Y/n] "
        if [[ $response =~ ^[y]$ ]]; then
            git commit -v
        elif [[ $response =~ ^[Y]$ ]]; then
            unset GIT_AUTHOR_DATE
            unset GIT_COMMITTER_DATE
            git commit -v
        else
            echo "Commit aborted."
        fi
    else
        git commit -v
    fi
}

# Todo: Add date check to this too?
alias gcm="git commit -v --amend"

alias gch="git checkout "
alias gchm="git checkout master"

alias gcl="git clone"
alias gcld="git clone --depth 1"

alias gcpk="git cherry-pick -n"

# If a param is passed, diff that, else diff the current folder
function gd {
    ! [ -z "$1" ] && git diff -M "$1" || git diff -M .
}

alias gdc="git diff --cached -M"

alias gf="git fetch "
alias gfu="git fetch upstream && git rebase upstream/master"
alias gfa="git fza "

alias gg="git grep --break --heading --line-number"

# alias gl="git log --date=short --pretty=format:'%C(bold blue)%h%C(reset) %<|(35)%ar %<(70,mtrunc) %s %d'" -n 20
alias gl="git --no-pager log --date=short --pretty=format:'%C(red)%h%C(reset) - %C(green)%<|(19,trunc)%ar%C(reset)  -   %C(white)%<(80,mtrunc)%s%C(reset) %C(yellow)%<(45,trunc)%d%C(reset)' -n 20"

# View commits that are not on master (pull request commits!)
alias glp="git --no-pager log master...  --no-merges --date=short --pretty=format:'%C(red)%h%C(reset) - %C(green)%<|(22,mtrunc)%ar%C(reset)  -   %C(white)%<(80,mtrunc)%s%C(reset) %C(yellow)%<(30,trunc)%d%C(reset)'"

alias gla="git log --date=short --pretty=format:'%C(auto) %<(18,trunc) %an %<|(35) %ar %<(70,mtrunc) %s %d' -n 20"
alias glc="git log --format=%B "
alias gll="git log --date=short --pretty=format:\"%C(auto) %h %ad %<|(35)%ar %<(70,mtrunc) %s %d\""
alias glu="git log --graph --abbrev-commit --decorate --date=relative --format=format:\"%C(blue)%h%C(reset) - %C(green)%ar%C(reset) - %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(yellow)%d%C(reset)\" --all"

alias gm="git merge --squash "

alias gp="git push "
alias gpf="git push --force"

alias gpl="git pull "
gpb() {
    git push --set-upstream origin "$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
}

gmkpull() {
    repo_name="$(basename "$(git rev-parse --show-toplevel)")"
    branch_name="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
    pull_url="https://github.com/dufferzafar/"$repo_name"/compare/"$branch_name"?expand=1"
    xdg-open $pull_url
}

alias gr="git reset -q HEAD"
alias grb="git rebase master"
alias grbi="git rebase -i master"
alias grbc="git rebase --continue"
alias grbs="git rebase --skip"

alias grv="git remote -vv"

alias gru="git remote update"

alias gs="git status -u"

alias gsl="git shortlog -n -s"

alias gst="git stash "
alias gsts="git stash save"
alias gsa="git stash apply"
alias gsp="git stash pop"
alias gstl="git stash list"

alias gun="git reset --soft @~1"

alias gwhat="git whatchanged --oneline"

# hub
alias hb="hub browse"

# Set the git date environment to any date
# then make any ammends to change time!
#
# Usage:
#
# gdate `date --date='2 days ago'`
# gdate reset
function gdate {
    if [[ -z $1 ]]; then
        echo "Git date environment: " "$GIT_AUTHOR_DATE"
    elif [[ $1 = "reset" ]]; then
        unset GIT_AUTHOR_DATE
        unset GIT_COMMITTER_DATE
        echo "Git date environment reset."
    else
        export GIT_AUTHOR_DATE="$*"
        export GIT_COMMITTER_DATE="$*"
        echo "Git date environment set to:" "$*"
    fi
}

# Change the git author environment
# Then you can make any commits/amends etc. as that person
#
# Usage:
#
# gauth name email
# gauth reset
function gauth {
    if [[ -z $1 ]]; then
        echo "Git author environment: " "$GIT_AUTHOR_NAME - $GIT_AUTHOR_EMAIL"
    elif [[ $1 = "reset" ]]; then
        unset GIT_AUTHOR_NAME
        unset GIT_AUTHOR_EMAIL
        unset GIT_COMMITTER_NAME
        unset GIT_COMMITTER_EMAIL
        echo "Git author environment reset."
    else
        export GIT_AUTHOR_NAME="$1"
        export GIT_AUTHOR_EMAIL="$2"
        export GIT_COMMITTER_NAME="$1"
        export GIT_COMMITTER_EMAIL="$2"
        echo "Git author environment set to: " "$GIT_AUTHOR_NAME - $GIT_AUTHOR_EMAIL"
    fi
}


# Go to the root directory of a git project
function groot {
    cd "$(git rev-parse --show-toplevel)"
}

function git-most {
    git log --pretty=format: --name-only | sort | uniq -c | sort -rg | head -10
}
