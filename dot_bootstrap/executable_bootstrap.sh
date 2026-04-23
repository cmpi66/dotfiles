#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=/dev/null
source "$SCRIPT_DIR/executable_syncutils"

RCLONE_CONF="${RCLONE_CONF:-$HOME/.config/rclone/rclone.conf}"

log "Starting bootstrap..."

require chezmoi
require rclone

[ -f "$RCLONE_CONF" ] || fail "missing rclone config at $RCLONE_CONF"

"$SCRIPT_DIR/executable_boot_pass_restore.sh"

cat <<'EOF'

Bootstrap complete.

Next steps:
  1. Unlock/access passage as needed
  2. Run: chezmoi apply

EOF
