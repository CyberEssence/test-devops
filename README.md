# test-devops

Баш скрипт отрабатывает каждые 60 секунд, логгирует в файл /var/log/monitoring.log следующие действия:
1) Перезапуск нашего процесса
2) Доступность эндпоинта
3) Недоступность эндпоинта

Файл юнита systemd кладем в эту папку /etc/systemd/system/

Файл скрипта кладем в папку /opt 

Далее systemctl start monitoring.service

Для проверки можно перезапустить: systemctl restart monitoring.service 
