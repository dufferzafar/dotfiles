# Ctrl + P in the terminal
# https://gist.github.com/chew-z/db310b0e3184ae335e24d2ec7087a123
# alias preview="fzf --preview
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
fzf-edit-file-or-open-dir() {
    local out key file helpline
    helpline="Ctrl-f to reveal in file browser | Enter to edit file"

    # Uncomment to use other tools instead of ag
    # IFS=$'\n' out=($(bfs | fzf --header="$helpline" \
    # IFS=$'\n' out=($(rg --files --hidden --glob "!.git/*" | fzf --header="$helpline" \

    IFS=$'\n' out=($(ag -g "" | fzf --header="$helpline" \
            --exit-0 \
            --expect=ctrl-f \
            --preview 'bat --color always {}' \
            --preview-window right \
            --bind='?:toggle-preview' ))

    key=$(head -1 <<< "$out")
    file=$(head -2 <<< "$out" | tail -1)

    if [ "$key" = ctrl-f ]; then
        dolphin --select "$file"
    else # enter
        if [ -f "$file" ]; then
            vs "$file"
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

# fif() {
#   if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
  
#   rg --files-with-matches --no-messages "$1" | \
#     fzf --preview-window=right:50% --preview \
#         "bat --style=plain,header,snip,numbers --color always {} | rg --pretty --colors 'match:bg:red' --colors 'match:fg:white' --no-line-number --ignore-case --context 10 '$1'"
# }

# Find in files using ripgrep
rgf()
{
    RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
    INITIAL_QUERY="$1"
    FZF_DEFAULT_COMMAND="$RG_PREFIX '$INITIAL_QUERY'" \
    fzf --ansi --phony --query "$INITIAL_QUERY" \
        --bind "change:reload:$RG_PREFIX {q} || true" \
        --preview-window=top:30% --preview "batter -v {} | rg --pretty --colors 'match:bg:red' --colors 'match:fg:white' --no-line-number --ignore-case --context 3 {q}"
}
