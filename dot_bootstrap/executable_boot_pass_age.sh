#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=/dev/null
source "$SCRIPT_DIR/executable_syncutils"

AGE_KEY_PATH="${AGE_KEY_PATH:-$HOME/.config/age/chezmoi-key.txt}"
PASSAGE_ENTRY="${PASSAGE_ENTRY:-age/chezmoi-key}"

sync_init

log "Restoring age key..."

# Preconditions
require passage

# Ensure passage store exists
[ -d "$HOME/.passage" ] || fail "passage store not found at ~/.passage (did bootstrap run?)"

# Ensure entry exists
if ! passage show "$PASSAGE_ENTRY" >/dev/null 2>&1; then
  fail "passage entry '$PASSAGE_ENTRY' not found"
fi

# Idempotency: skip if already present and valid
if [ -f "$AGE_KEY_PATH" ] && [ -s "$AGE_KEY_PATH" ]; then
  if grep -q '^AGE-SECRET-KEY-' "$AGE_KEY_PATH"; then
    warn "Age key already present at $AGE_KEY_PATH — skipping"
    sync_success
    exit 0
  else
    warn "Existing age key file invalid — re-restoring"
  fi
fi

mkdir -p "$(dirname "$AGE_KEY_PATH")"

# Write to temp file first (avoid partial writes)
TMP_FILE="$(mktemp)"

log "Fetching key from passage..."

# Retry loop (handles YubiKey / transient failures)
ATTEMPTS=0
MAX_ATTEMPTS=3

until passage show "$PASSAGE_ENTRY" >"$TMP_FILE" 2>/dev/null; do
  ATTEMPTS=$((ATTEMPTS + 1))

  if [ "$ATTEMPTS" -ge "$MAX_ATTEMPTS" ]; then
    rm -f "$TMP_FILE"
    fail "failed to retrieve age key after $MAX_ATTEMPTS attempts"
  fi

  warn "passage failed (attempt $ATTEMPTS/$MAX_ATTEMPTS), retrying..."
  sleep 2
done

# Validate content
if ! grep -q '^AGE-SECRET-KEY-' "$TMP_FILE"; then
  rm -f "$TMP_FILE"
  fail "retrieved key does not look like a valid age key"
fi

# Move into place atomically
mv "$TMP_FILE" "$AGE_KEY_PATH"

chmod 600 "$AGE_KEY_PATH"

ok "Age key restored to $AGE_KEY_PATH"

sync_success
