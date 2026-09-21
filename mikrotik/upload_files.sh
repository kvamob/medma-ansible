#!/bin/sh

ansible-playbook -i ./inventory/mikrotik.ini ./playbooks/upload_scripts.yaml
