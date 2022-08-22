# Work Profile @ Tower Research Capital, India

# https://confluence.tower-research.com/display/DT/Quick+Set+up+for+Conda
# source tpm-deactivate; source tpm-deactivate
unset PYTHONPATH PYTHONHOME

# This is needed for conda environments but needs to disabled when using system python
# export PYTHONNOUSERSITE=True

# Devtools custom utilities & main profile (includes conda)
# https://confluence.tower-research.com/display/DT/Defining+and+using+your+own+utilities
export DEVTOOLS_CUSTOM_UTILS="
utility=cgdb;spec=cgdb=0.8.0;public=true
utility=gdb;spec=gdb=10;public=true
utility=heaptrack;spec=heaptrack=1.4.0;public=true
utility=heaptrack_print;spec=heaptrack=1.4.0;public=true
utility=inotifywatch;spec=inotify-tools=3;public=true
utility=mycli;spec=mycli=1.22;public=true
utility=pgcli;spec=pgcli=3;public=true
utility=zstd;spec=zstd>=1.5;public=true
"
source /opt/devtools/utils/etc/profile
#utility=vd;spec=visidata=2.8;public=true
#utility=mamba;spec=micromamba=0.24.0;binary=micromamba;public=true

# This only brings in devtools conda and not other utilities
# source /opt/devtools/conda/etc/profile.d/conda.sh

# Separately installed conda in /spare/local/conda - DEPRECATED
# [[ -f /spare/local/conda/etc/profile.d/conda.sh ]] && source /spare/local/conda/etc/profile.d/conda.sh 2> /dev/null

# This is the core environment
# conda activate cenv

# =========================================================

# Aliases

alias trc-fmt="trc-clang-format -i"

# =========================================================

# Binaries of 3rd party tools
export PATH=/spare/local/szafar/apps/bin/:$PATH

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
