#!/bin/bash

# Variables
DB_USER="db_user"
DB_PASS="db_password"
DB_NAME="database_name"
BACKUP_DIR="/path/to/backup"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_NAME="db_backup_$TIMESTAMP.sql"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Dump the database to a file
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/$BACKUP_NAME

# Compress the backup file
gzip $BACKUP_DIR/$BACKUP_NAME

# Remove backups older than 7 days
find $BACKUP_DIR -type f -name "db_backup_*.sql.gz" -mtime +7 -exec rm {} \;

echo "Database backup completed: $BACKUP_DIR/$BACKUP_NAME.gz"