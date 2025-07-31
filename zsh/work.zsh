
# Work Profile @ Tower Research Capital, India

# https://confluence.tower-research.com/display/DT/Quick+Set+up+for+Conda
# source tpm-deactivate; source tpm-deactivate
unset PYTHONPATH PYTHONHOME
export PYTHONNOUSERSITE=True

# This conda is managed by the devtools team
source /opt/devtools/conda/etc/profile.d/conda.sh
source /opt/devtools/micromamba/etc/profile.d/micromamba.sh

# But I also have a separately installed conda in /spare/local/conda
# [[ -f /spare/local/conda/etc/profile.d/conda.sh ]] && source /spare/local/conda/etc/profile.d/conda.sh 2> /dev/null

# This is the core environment
# conda activate cenv

# =========================================================

# Binaries of 3rd party tools
export PATH=/spare/ssd/szafar/apps/zsh/bin:/spare/ssd/szafar/apps/tmux/local/bin:$PATH
export PATH=/spare/ssd/szafar/apps/bin/:$PATH
