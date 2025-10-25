#!/bin/bash
SOURCE="$HOME/"
REMOTE_USER="simon"
REMOTE_HOST="192.168.214.32"   # byt till korrekt IP
REMOTE_DIR="/home/$REMOTE_USER/backup_home"
DATE=$(date +%Y-%m-%d)
DELETED_DIR="$REMOTE_DIR/deleted_$DATE"

rsync -av --delete --backup --backup-dir="$DELETED_DIR" "$SOURCE" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"

