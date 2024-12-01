#!/bin/bash

LOG_FILE="/var/log/monitoring.log"

# Функция для записи в лог
log_message() {
    echo "$(date): $1" >> "$LOG_FILE"
}

# Проверяем наличие процесса
if ps aux | grep "test"; then
    # Проверяем доступность API
    if curl -s -k --max-time 10 https://test.com/monitoring/test/api > /dev/null; then
        log_message "API valiable"
    else
        log_message "API unvaliable"
    fi
    if ps aux | grep -c monitoring > 1; then
        log_message "Process restarted"
    fi
fi

# Ожидаем 60 секунд перед следующей проверкой
sleep 60
