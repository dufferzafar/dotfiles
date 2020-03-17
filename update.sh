#!/bin/bash
# Update locally installed applications

# VS Code Insiders
pushd /spare/ssd/szafar/apps/ >/dev/null
    echo "Updating VS Code Insiders"
    rm -f vscode_insiders.tar.gz
    wget -nv https://vscode-update.azurewebsites.net/latest/linux-x64/insider -O vscode_insiders.tar.gz

    # Untar
    tar xzf vscode_insiders.tar.gz

    # Remove old, move current to old, make current latest
    rm -rf vscode-insiders-old
    mv vscode-insiders vscode-insiders-old
    mv VSCode-linux-x64 vscode-insiders
popd
