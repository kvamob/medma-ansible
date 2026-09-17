#!/bin/sh

ansible-playbook -i hosts.ini ./playbooks/upload_scripts.yaml
