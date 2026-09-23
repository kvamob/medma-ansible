#!/bin/sh

ansible-playbook -i ./inventory/mikrotik.ini ./playbooks/update_firmware_1.yaml
