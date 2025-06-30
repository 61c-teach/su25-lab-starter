#!/usr/bin/env bash
set -euf -o pipefail

KEY_FILE="$HOME/.ssh/61c-ed25519"

if [ ! -f "$KEY_FILE" ]; then
    ssh-keygen -t ed25519 -f "$KEY_FILE" -C "61Ced25519Key" -N ""
    echo "Great! Your new SSH key is at: $KEY_FILE" 
else
    echo "SSH key already exists at $KEY_FILE. Skipping generation."
fi