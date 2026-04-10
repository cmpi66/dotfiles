#!/usr/bin/env bash
set -euo pipefail

ENTRY="$1"
CACHE_BASE="${XDG_RUNTIME_DIR:-/tmp}/aerc-pass-$USER"
CACHE="$CACHE_BASE/$ENTRY"

# expire after 1 hour
TTL=3600

umask 077
mkdir -p "$(dirname "$CACHE")"

if [ -f "$CACHE" ]; then
  if [ $(($(date +%s) - $(stat -c %Y "$CACHE"))) -lt "$TTL" ]; then
    cat "$CACHE"
    exit 0
  fi
fi

pass show "$ENTRY" | tee "$CACHE"
