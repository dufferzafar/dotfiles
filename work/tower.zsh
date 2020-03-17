# Work Profile @ Tower Research Capital, India

# https://confluence.tower-research.com/display/DT/Quick+Set+up+for+Conda
# source tpm-deactivate; source tpm-deactivate
unset PYTHONPATH PYTHONHOME
export PYTHONNOUSERSITE=True

# This conda is managed by the devtools team
source /opt/devtools/utils/etc/profile
# source /opt/devtools/conda/etc/profile.d/conda.sh

# But I also have a separately installed conda in /spare/local/conda
# [[ -f /spare/local/conda/etc/profile.d/conda.sh ]] && source /spare/local/conda/etc/profile.d/conda.sh 2> /dev/null

# This is the core environment
# conda activate cenv

# =========================================================

# Aliases

alias trc-fmt="trc-clang-format -i"

# =========================================================

# Binaries of 3rd party tools
export PATH=/spare/ssd/szafar/apps/bin/:$PATH

# JQ Helpers

list-ss() {
    cat /tmp/mongo/*.json | \
    jq -r '.[] | select(.type == "SURVEILLANCE_SERVER") | .team + " " +.id'
}

list-ts() {
    cat /tmp/mongo/*.json | \
    jq -r '.[] | select(.type == "TRADE_SERVER") | .team + " " +.id'
}

find-repo() {
    query=$1
    curl -s "https://gerrit.tower-research.com/projects/?n=100&S=0&query=${query}" \
        -H 'Cookie: GerritAccount=aVApprsKZLw9Nyxvwn5yQn6-NXl0K8ty5W;' \
    | tail -n +2 | jq -r '.[] | .id' | fzf
}

# Useful on remote machines
alias users="who | awk '{print $5}' | awk -F. '{print $1 "." $2}' | cut -c2- | sort -u"
