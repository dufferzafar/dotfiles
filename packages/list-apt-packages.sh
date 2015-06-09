#! /bin/bash

# Script to get all user installed packages on the system

# List of all packages currently installed
current=$(dpkg -l | awk '{print $2}' | sort | uniq)

# List of all packages that were installed with the system
pre=$(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort | uniq)

# List of packages that don't depend on any other package
manual=$(apt-mark showmanual | sort | uniq)

# (Current - Pre) ∩ (Manual)
packages=$(comm -12 <(comm -23 <(echo "$current") <(echo "$pre")) <(echo "$manual") )

for pack in $packages; do
    packname=$(echo $pack | cut -f 1 -d ":")
    desc=$(apt-cache search "^$packname$" | head -n 1 | sed -E 's/[^ - ]* - (.*)/\1/')
    date=$(date -r /var/lib/dpkg/info/$pack.list)

    echo "# $desc"
    echo "# $date"
    echo "apt-get -y install $pack"
    echo -e ""
done
