#!/usr/bin/env bash
set -euf -o pipefail

KEY_FILE="$HOME/.ssh/id_ed25519"

if [ ! -f "$KEY_FILE" ]; then
    ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N ''
    echo "Great! Your new SSH key is at: $KEY_FILE"
else
    echo "SSH key already exists at $KEY_FILE. Skipping generation."
fi
