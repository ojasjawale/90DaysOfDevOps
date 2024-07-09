#!/bin/bash

# Ensure a directory path is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

# Assign the provided directory path to a variable
DIR_PATH=$1

# Ensure the provided path is a directory
if [ ! -d "$DIR_PATH" ]; then
    echo "Error: $DIR_PATH is not a directory."
    exit 1
fi

# Create a timestamp for the backup folder
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIR="${DIR_PATH}/backup_${TIMESTAMP}"

# Create the backup directory
mkdir -p "$BACKUP_DIR"

# Copy all files from the specified directory to the backup directory
cp -r "$DIR_PATH"/* "$BACKUP_DIR"

# Inform the user that the backup is created
echo "Backup created: $BACKUP_DIR"

# Rotate backups to keep only the last 3 backups
BACKUPS=($(ls -dt ${DIR_PATH}/backup_*))

# Check if there are more than 3 backups
if [ ${#BACKUPS[@]} -gt 3 ]; then
    for ((i=3; i<${#BACKUPS[@]}; i++)); do
        rm -rf "${BACKUPS[$i]}"
        echo "Old backup removed: ${BACKUPS[$i]}"
    done
fi

exit 0

