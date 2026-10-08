#!/bin/sh

ansible-playbook -i ./inventory/mikrotik_api.ini ./playbooks/adjust_time_api.yaml
