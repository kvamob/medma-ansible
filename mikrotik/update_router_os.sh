#!/bin/sh

ansible-playbook -i ./inventory/mikrotik.ini ./playbooks/update_router_os.yaml
