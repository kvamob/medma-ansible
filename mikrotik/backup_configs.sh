#!/bin/sh

ansible-playbook -i ./inventory/mikrotik_1.ini ./playbooks/backup_configs.yaml
