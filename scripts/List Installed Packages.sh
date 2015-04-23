#!/usr/bin/bash
cat /var/log/apt/history.log | grep "Commandline: apt-get install" | grep -v -f | sed 's/Commandline:/sudo/g; s/\-\-yes\ //g;' | sort | uniq > ~/.dotfiles/install_packages.sh
