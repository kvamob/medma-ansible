#!/bin/bash

# Название службы
SERVICE="srv1cv8-8.3.24.1808@default.service"
sudo systemctl stop "$SERVICE"
if [ $? -eq 0 ]; then
    sleep 300
    shopt -sdotglob
    rm -rf /home/usr1cv8/srvinfo_1640/reg_1641/snccntx*/*
    sleep 60
    sudo systemctl start "$SERVICE"
fi
