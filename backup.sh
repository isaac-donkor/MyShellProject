#!/bin/bash

# Set source and destination
SOURCE_DIR="./data"
BACKUP_DIR="./backup"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Create the backup
tar -czf "$BACKUP_DIR/$BACKUP_NAME" -C "$SOURCE_DIR" .

# Print success message
echo "Backup created at $BACKUP_DIR/$BACKUP_NAME"
