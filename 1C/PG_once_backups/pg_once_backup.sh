#!/bin/bash

# Количество дней для удаления
# 0 - удалить ВСЕ файлы .dump без учета даты
DAYS_OLD=0
# Получаем абсолютный путь к директории, из которой запущен скрипт
CURRENT_DIR="/var/backups/PG_once_backups"
if  [ "$DAYS_OLD" -eq 0 ]; then
    # Ищем и удаляем все файлы .dump без фильтра по времени
    find "$CURRENT_DIR" -mindepth 1 -type f -name "*.dump" -delete
else
    # Ищем и удаляем файлы старше указанного количества дней
    # Конструкция $(( DAYS_OLD -1)) нужна для точного соответствия дней в утилите find
    find "$CURRENT_DIR" -mindepth 1 -type f -name "*.dump" -mtime +"$((DAYS_OLD - 1))" -delete
fi

export PGPASSWORD='s4leWgMS'
filename="MIS_EKO_Volgograd_$(date +"%Y-%m-%d_%H-%M").dump"
pg_dump -U postgres -h localhost -d MIS_EKO_Volgograd -F c -f /var/backups/PG_once_backups/$filename

unset PGPASSWORD
