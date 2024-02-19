#!/bin/bash

HOST="77af7dcaa08e.dee385a8.alu-cod.online"
USERNAME="77af7dcaa08e"
PASSWORD="40be54298072cb995ccc"
REMOTE_DIR="/testbackup/"

BACKUP_DIR="negpod_07-q1"

echo "Starting backup to remote server..."
sleep 2
scp -r $BACKUP_DIR $USERNAME@$HOST:$REMOTE_DIR
echo please wait ...
sleep 2
echo "Backup completed successfully."
