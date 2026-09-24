#!/bin/sh

ansible-playbook -i ./inventory/mikrotik_1.ini ./playbooks/get_os_version.yaml
