#!/bin/bash

#remote server
HOST="64293e56bc62.3a2627c1.alu-cod.online"
USERNAME="64293e56bc62"
PASSWORD="328d3b338a4ced526c9a"
REMOTE_DIR="/summative/1023-2024j"

#directory
BACKUP_DIR="negpod_07-q1"

# Backup to server via ssh
echo "Starting backup to remote server..."
sleep 2
scp -r $BACKUP_DIR $USERNAME@$HOST:$REMOTE_DIR
echo please wait ...
sleep 2
echo "Backup completed successfully."
