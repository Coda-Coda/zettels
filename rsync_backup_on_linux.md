---
tags:
  - (Tech)/(Going Deeper)
---
# rsync backup on linux

## Example Backup script using rsync - similar result to Time Machine Backups

```bash
#!/bin/bash

# Based on https://linuxconfig.org/how-to-create-incremental-backups-using-rsync-on-linux

# A script to perform incremental backups using rsync

set -o errexit
set -o nounset
set -o pipefail

readonly SOURCE_DIR="${HOME}"
readonly BACKUP_DIR="/run/media/YOUR_BACKUP_PATH_HERE"
readonly DATETIME="$(date '+%Y-%m-%d_%H.%M.%S')"
readonly BACKUP_PATH="${BACKUP_DIR}/${DATETIME}"
readonly LATEST_LINK="${BACKUP_DIR}/latest"

mkdir -p "${BACKUP_DIR}"

rsync -av --delete \
  "${SOURCE_DIR}/" \
  --link-dest "${LATEST_LINK}" \
  --exclude=".cache" \
  --exclude="VirtualBox VMs" \
  "${BACKUP_PATH}"
# Note use: --exclude=".*/" to exclude all hidden folders.

rm -rf "${LATEST_LINK}"
ln -s "${BACKUP_PATH}" "${LATEST_LINK}"

```