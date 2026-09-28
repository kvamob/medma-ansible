#!/bin/sh

# Получение версии RouterOS и запись в файл /tmp/mikrotiks.log
#ansible-playbook -i ./inventory/mikrotik.ini ./playbooks/get_info.yaml
ansible-playbook -i ./inventory/mikrotik_api.ini ./playbooks/test_api.yaml
