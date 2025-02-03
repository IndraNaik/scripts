#!/bin/bash

<< help
This is a shell script to take backups.
It includes error handling and email notifications if the backup fails.
Can also be used with cron.
help

# Configuration
source_dir="/home/ubuntu/scripts"
destination_dir="/home/ubuntu/backups"
log_file="/var/log/backups.log"
admin_email="example@abc.com"

function send_email_notification {
    local subject="$1"
    local message="$2"
    echo "$message" | mail -s "$subject" "$admin_email"
}

function create_backup {
    timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
    backup_file="${destination_dir}/backup_${timestamp}.zip"

    mkdir -p "$destination_dir"

    zip -r "$backup_file" "$source_dir" >> "$log_file" 2>&1
    backup_status=$?

    if [ $backup_status -eq 0 ]; then
        echo "$(date) - Backup successful: $backup_file" >> "$log_file"
    else
        echo "$(date) - Backup failed" >> "$log_file"
        send_email_notification "Backup Failed!" "Backup process failed on $(hostname) at $(date). Check logs at $log_file."
    fi
}

create_backup
