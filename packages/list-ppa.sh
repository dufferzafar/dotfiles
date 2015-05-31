#! /bin/bash

# Script to get all PPAs installed on the system
for APT in `find /etc/apt/ -name \*.list`; do
    grep -o "^deb http://ppa.launchpad.net/[a-z0-9\-]\+/[a-z0-9\-]\+" $APT | while read ENTRY ; do

        USER=`echo $ENTRY | cut -d/ -f4`
        PPA=`echo $ENTRY  | cut -d/ -f5`

        echo sudo apt-add-repository --yes ppa:$USER/$PPA
    done
done
