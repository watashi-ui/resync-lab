#!/bin/bash

# Hemkatalog som ska backas upp
SOURCE="$HOME/"

# Backupdestination på kamratens maskin
DEST="user@kamratens-maskin:/home/user/backups"

# Datum för arkivbackup
DATE=$(date +%Y-%m-%d)

# Arkivkatalog för gamla filer
ARCHIVE="$DEST/archive-$DATE"

# Rsync-kommando
rsync -av --delete --backup --backup-dir=$ARCHIVE $SOURCE $DEST/current
