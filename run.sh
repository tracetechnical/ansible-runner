#!/bin/bash
mkdir -p /tmp/repo
cd /tmp/repo || exit
git clone "$REPOSITORY" .
echo "$VAULT_PASSWORD" > /tmp/vaultpass
ansible-playbook --vault-password-file /tmp/vaultpass -i "$INVENTORY_FILE" "$PLAYBOOK_FILE"