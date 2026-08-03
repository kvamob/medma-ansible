#!/bin/bash

# Каталог
#DIR="/home/usr1cv8/srv1cv83-8.3.22.2283/reg_1641/5b1ca0fe-e3e8-45af-807d-d983871d1d04/1Cv8Log"
DIR="/home/usr1cv8/srvinfo_1640/reg_1641/281f730d-ca1c-4cb6-aba0-7274023a6d48/1Cv8Log"
# Исключение
EXCLUDE="1Cv8.lgf"

# Лог-файл
script_dir="/var/backups/PG_once_backups"
LOG="$script_dir/cleanup_1c_log.log"

# Проверка каталога
if [ ! -d "$DIR" ]; then
  echo "$(date) — Каталог $DIR не найден." >> "$LOG"
  exit 1
fi

# Очистка и логгирование
echo "$(date) — Запуск очистки в $DIR" >> "$LOG"
find "$DIR" -type f ! -name "$EXCLUDE" -mtime +90 -print -delete >> "$LOG" 2>&1
echo "$(date) — Завершено" >> "$LOG"
