# Todo: Send notifications when the job completes, or errors.
# Delete backups older than 3 days!

dir="/mnt/Stuff/Backup/Ubuntu"

# Backup all 1 level files whose names start with '.'
tar -cf $dir/home-files.tar "$(find "$HOME" -maxdepth 1 -type f -name "\.*")"
