# Make sure the backup directory exists
dir="tars"
mkdir -p $dir

# echo the command being executed
set -x

############################################################## /etc/

# Apache2
tar -cf $dir/apache2.tar -C / etc/apache2 var/www

# apt - some config, sources, and
tar -cf $dir/apt.tar -C / etc/apt

# bash completions
tar -cf $dir/bash_completions.tar -C / etc/bash_completion.d

# Misc Config Files
tar -cf $dir/etc-config.tar -C / etc/wvdial.conf

############################################################# /home/dufferzafar

# Desktop Files
tar -cf $dir/desktop-files.tar -C / home/dufferzafar/.local/share/applications/
