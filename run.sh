#!/bin/bash
mkdir -p /tmp/repo
cd /tmp/repo || exit
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
git clone "$REPOSITORY" .
echo "$VAULT_PASSWORD" > /tmp/vaultpass
ansible-playbook --vault-password-file /tmp/vaultpass -i "$INVENTORY_FILE" "$PLAYBOOK_FILE"