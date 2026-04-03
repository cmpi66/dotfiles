#!/usr/bin/env bash
set -euo pipefail

source "$HOME/.local/share/chezmoi/dot_bootstrap/executable_syncutils"

ANKI_DIR="$HOME/.local/share/Anki2"
STAGING_DIR="$HOME/.local/share/anki-sync-staging"
REMOTE="IdriveEncrypt:anki-backup"
REMOTE_ARCHIVE="IdriveEncrypt:anki-archive"

require rclone
require rsync

# ── Guard: Anki must NOT be running ─────────────────────
if pgrep -x anki >/dev/null; then
  fail "Anki is running — refusing to backup"
fi

if [[ ! -d $STAGING_DIR ]]; then
  log "Creating staging dir"
  mkdir -p "$STAGING_DIR"
fi

TIMESTAMP=$(date +%F-%H%M%S)

log "Syncing live → staging..."
rsync -a --delete "$ANKI_DIR/" "$STAGING_DIR/"

log "Pushing latest mirror → remote..."
rclone sync "$STAGING_DIR" "$REMOTE"

log "Creating versioned backup..."
rclone copy "$STAGING_DIR" "$REMOTE_ARCHIVE/$TIMESTAMP"

log "Backup complete: $TIMESTAMP"
