#!/bin/sh

ansible-playbook -i ./inventory/mikrotik.ini ./playbooks/get_os_version.yaml
