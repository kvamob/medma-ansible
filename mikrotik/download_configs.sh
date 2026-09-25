#!/bin/sh

ansible-playbook -i ./inventory/mikrotik_1.ini ./playbooks/download_configs.yaml
