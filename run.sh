#!/bin/bash
mkdir -p /tmp/repo
cd /tmp/repo || exit
git clone "$REPOSITORY" .
echo "$VAULT_PASSWORD" > /tmp/vaultpass
cd "$ANSIBLE_DIRECTORY" || exit
ansible-playbook --vault-password-file /tmp/vaultpass -i "$INVENTORY_FILE" "$PLAYBOOK_FILE"