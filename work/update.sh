#!/bin/bash
# Update locally installed applications

# VS Code Insiders
# TODO: Only do this if it wasn't updated in the last 3 days
pushd /spare/local/szafar/apps/ >/dev/null
    echo "Updating VS Code Insiders"
    rm -f vscode_insiders.tar.gz
    wget -nv "https://code.visualstudio.com/sha/download?build=insider&os=linux-x64" -O vscode_insiders.tar.gz

    # Untar
    tar xzf vscode_insiders.tar.gz

    # Remove old, move current to old, make current latest
    rm -rf vscode-insiders-old
    mv vscode-insiders vscode-insiders-old
    mv VSCode-linux-x64 vscode-insiders
popd

pushd /spare/local/szafar/apps/ >/dev/null
    echo "Updating DBeaver"
    rm -f dbeaver.tar.gz
    wget -nv "https://dbeaver.io/files/dbeaver-ce-latest-linux.gtk.x86_64.tar.gz" -O dbeaver.tar.gz
    rm -rf dbeaver-old
    mv dbeaver dveaver-old
    tar xzf dbeaver.tar.gz
popd

# Straightforward binaries from GitHub - This is why I ♥ Rust!
function download_latest_release {
	URL=$(
        curl -s https://api.github.com/repos/$1/$2/releases/latest \
        |  jq -r '.assets[] | .browser_download_url' \
        | grep $3
    )
    wget $URL -O $1-$2.tar.gz
}

function gh_update {
    GH_USER=$1
    GH_REPO=$2
    RELEASE_FILTER=${3:-'x86_64.*gnu.tar.gz'}

    download_latest_release $GH_USER $GH_REPO $RELEASE_FILTER
    tar xf $GH_USER-$GH_REPO.tar.gz --wildcards --strip-components=1 "*/$GH_REPO"
    mv $GH_REPO ../bin/
}

pushd /spare/local/szafar/apps/_tarballs_ > /dev/null
    # gh_update sharkdp bat
    # gh_update sharkdp fd
    # gh_update sharkdp hexyl
    # gh_update dandavison delta
    # gh_update jesseduffield lazygit 'Linux_x86_64.tar.gz'
    # gh_update kovidgoyal kitty 'Linux amd64'
popd

# espanso
# tokei
# rg
# xsv
