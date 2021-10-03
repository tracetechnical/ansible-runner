#!/bin/bash
echo $VAULT_PASSWORD > /tmp/vaultpass
sudo ansible-playbook --vault-password-file /tmp/vaultpass -i $INVENTORY_FILE $PLAYBOOK_FILE