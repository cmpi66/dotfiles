#!/bin/bash
set -euo pipefail

echo "[chezmoi] Starting git remote SSH configuration..."

SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export SSH_AUTH_SOCK

SSH_OUT=$(ssh -T git@github.com -o BatchMode=yes -o ConnectTimeout=5 2>&1 || true)

if ! echo "$SSH_OUT" | grep -q "successfully authenticated"; then
    echo "[chezmoi] SSH to GitHub unavailable — probe output: $SSH_OUT" >&2
    echo "[chezmoi] Skipping remote URL update." >&2
    exit 0
fi

CHEZMOI_SOURCE="${CHEZMOI_SOURCE_DIR%/}"

git -C "$CHEZMOI_SOURCE" config user.name "chris"
git -C "$CHEZMOI_SOURCE" config user.email "munozchris@posteo.net"

CURRENT_URL="$(git -C "$CHEZMOI_SOURCE" remote get-url origin)"

if [[ "$CURRENT_URL" == git@github.com:* ]]; then
    echo "[chezmoi] Remote is already using SSH ($CURRENT_URL), nothing to do."
elif [[ "$CURRENT_URL" == https://github.com/* ]]; then
    SSH_URL="${CURRENT_URL/https:\/\/github.com\//git@github.com:}"
    echo "[chezmoi] Switching remote from HTTPS to SSH: $SSH_URL"
    git -C "$CHEZMOI_SOURCE" remote set-url origin "$SSH_URL"
    echo "[chezmoi] Done. Remote URL updated successfully."
else
    echo "[chezmoi] Unrecognized remote URL format: $CURRENT_URL — skipping." >&2
fi
