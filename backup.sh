#!/bin/bash
<< help
This is a shell script to take backups 
This can also be used with cron
help

source_dir="/home/ubuntu/scripts"
destination_dir="/home/ubuntu/backups"

function create_backup {
	timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

	backup_dir="${destination_dir}/backup_${timestamp}"

	zip -r "${backup_dir}.zip" "$source_dir"

	echo "Backup completed successfully"
}

create_backup $source_dir $destination_dir
