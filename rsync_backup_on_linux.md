---
tags:
  - (Tech)/(Going Deeper)
page:
  headHtml: |
    <script type="text/javascript" src="https://coda-coda.github.io/HConfig/1.js"></script>
    <meta name="dc.relation.ispartof" content="Public-Zettelkasten-Daniel-Britten-(ORCID-0000-0002-7860-3595)">
    <meta name="dc.identifier" content="rsync_backup_on_linux">
    <script async src="https://hypothes.is/embed.js"></script>
---
# Rsync backup on linux

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