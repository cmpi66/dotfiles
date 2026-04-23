#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=/dev/null
source "$SCRIPT_DIR/executable_syncutils"

sync_init

PASS_DIR="$HOME/.passage"
REMOTE="IdriveEncrypt:passage"

log "Checking pass restore..."

# Preconditions
require rclone
[ -f "$HOME/.config/rclone/rclone.conf" ] || fail "rclone config missing"

# Skip if exists
if [ -d "$PASS_DIR" ] && [ "$(ls -A "$PASS_DIR")" ]; then
  warn "Pass directory already exists, skipping restore"
  sync_success
  exit 0
fi

# Sanity check
log "Validating remote..."
FILE_COUNT=$(rclone lsf "$REMOTE/store/root" | wc -l)

[ "$FILE_COUNT" -lt 50 ] && fail "Remote too small ($FILE_COUNT files)"

ok "Remote valid ($FILE_COUNT files)"

# Create dir
log "Creating directory..."
mkdir -p "$PASS_DIR"

# Sync
log "Restoring pass store..."
rclone sync "$REMOTE" "$PASS_DIR" \
  --fast-list \
  --transfers 16 \
  --checkers 16 \
  --multi-thread-streams 0 \
  --retries 5

chmod 700 "$PASS_DIR"

ok "Pass store restored"

sync_success
