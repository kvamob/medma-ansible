#!/bin/sh

ansible-playbook -i ./inventory/mikrotik_1.ini ./playbooks/upload_scripts_api.yaml
