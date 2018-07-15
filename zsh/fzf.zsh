# Ctrl + P in the terminal
# https://gist.github.com/chew-z/db310b0e3184ae335e24d2ec7087a123
fzf-edit-file-or-open-dir() {
    local out key file helpline
    helpline="Ctrl-f to reveal in file browser | Enter to edit file"

    # Uncomment to use other tools instead of ag
    # IFS=$'\n' out=($(bfs | fzf --header="$helpline" \
    # IFS=$'\n' out=($(rg --files --hidden --glob "!.git/*" | fzf --header="$helpline" \

    IFS=$'\n' out=($(ag -g "" | fzf --header="$helpline" \
            --exit-0 \
            --expect=ctrl-f \
            --preview '[ -f {} ] && head -n 50 {}' \
            --preview-window right \
            --bind='?:toggle-preview' ))

    key=$(head -1 <<< "$out")
    file=$(head -2 <<< "$out" | tail -1)

    if [ "$key" = ctrl-f ]; then
        dolphin --select "$file"
    else # enter
        if [ -f "$file" ]; then
            subl "$file"
        elif [ -d "$file" ]; then
            cd "$file"
        fi
        # zle reset-prompt
    fi
    # zle accept-line
}
zle     -N   fzf-edit-file-or-open-dir
bindkey '^P' fzf-edit-file-or-open-dir

# fzit - fzf based git commit browser (enter for show, ctrl-d for diff, ` toggles sort)
# TODO: Display a preview pane on right, similar to tig
fzit() {
  local out shas sha q k
  while out=$(
      git log --graph --color=always \
          --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
      fzf --ansi --multi --no-sort --reverse --query="$q" \
          --print-query --expect=ctrl-d); do
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
zle     -N   fzit
bindkey '^[g' fzit

# Use locate to find files
loki() {
    if [ -z "$1" ]; then echo "No argument supplied"; zle accept-line; return 1; fi

    out=($(locate -e -i "$@" | \
            fzf \
            --exit-0 \
            --expect=ctrl-f \
            --bind "enter:execute(xdg-open {}),ctrl-o:execute(xdg-open (dirname {}))"))
    key=$(head -1 <<< "$out")
    file=$(head -2 <<< "$out" | tail -1)

    if [ "$key" = ctrl-f ]; then
        dolphin --select "$file"
    fi
    # zle accept-line
}
