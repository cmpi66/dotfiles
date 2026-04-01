#!/usr/bin/env bash
set -euo pipefail

PASS_DIR="$HOME/.local/share/pass"
REMOTE="IdriveEncrypt:pass"

echo "[*] Checking pass restore..."

# 1. Preconditions
command -v rclone >/dev/null || exit 0
[ -f "$HOME/.config/rclone/rclone.conf" ] || exit 0

# 2. Skip if already exists
if [ -d "$PASS_DIR" ] && [ "$(ls -A "$PASS_DIR")" ]; then
  echo "[*] Pass directory already exists, skipping restore"
  exit 0
fi

# 3. Sanity check remote (prevent wipe / bad sync)
FILE_COUNT=$(rclone lsf "$REMOTE/Root" | wc -l)

if [ "$FILE_COUNT" -lt 50 ]; then
  echo "[!] Remote looks suspiciously small ($FILE_COUNT files), aborting"
  exit 1
fi

# 4. Create dir
mkdir -p "$PASS_DIR"

# 5. Sync (authoritative restore)
rclone sync "$REMOTE" "$PASS_DIR" \
  --fast-list \
  --transfers 16 \
  --checkers 16 \
  --multi-thread-streams 0 \
  --retries 5

chmod 700 "$PASS_DIR"

echo "[+] Pass store restored"
