#!/usr/bin/env bash
set -euo pipefail

CACHE="${XDG_RUNTIME_DIR:-/tmp}/aerc-pass-$USER-$1"

# expire after 1 hour
TTL=3600

if [ -f "$CACHE" ]; then
  if [ $(($(date +%s) - $(stat -c %Y "$CACHE"))) -lt $TTL ]; then
    cat "$CACHE"
    exit 0
  fi
fi

pass show "$1" | tee "$CACHE"
