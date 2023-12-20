# Домашнее задание к занятию "Резервное копирование" - `Курапов Антон`

### Задание 1
* Составьте команду rsync, которая позволяет создавать зеркальную копию домашней директории пользователя в директорию /tmp/backup
* Необходимо исключить из синхронизации все директории, начинающиеся с точки (скрытые)
* Необходимо сделать так, чтобы rsync подсчитывал хэш-суммы для всех файлов, даже если их время модификации и размер идентичны в источнике и приемнике.
* На проверку направить скриншот с командой и результатом ее выполнения

![alt text](https://github.com/AntonKurapov66/backup_hw/blob/main/img/01.PNG)


### Задание 2
* Написать скрипт и настроить задачу на регулярное резервное копирование домашней директории пользователя с помощью rsync и cron.
* Резервная копия должна быть полностью зеркальной
* Резервная копия должна создаваться раз в день, в системном логе должна появляться запись об успешном или неуспешном выполнении операции
* Резервная копия размещается локально, в директории /tmp/backup
* На проверку направить файл crontab и скриншот с результатом работы утилиты.

* ОТРАБОТКА КРОНЫ  
  ![alt text](https://github.com/AntonKurapov66/backup_hw/blob/main/img/02_1.PNG)
* РЕЗУЛЬТАТ СКРИПТА
  ![alt text](https://github.com/AntonKurapov66/backup_hw/blob/main/img/02_2.PNG)
* КАК ВЫГЛЯДИТ СООБЩЕНИЕ В ЛОГАХ, ЕСЛИ СКРИПТ ПАДАЕТ С ОШИБКОЙ, В ЛОГАХ УКАЗЫВАЕТСЯ КОД ОШИБКИ RSYNC 
  ![alt text](https://github.com/AntonKurapov66/backup_hw/blob/main/img/02_3.PNG)  

скрипт: https://github.com/AntonKurapov66/backup_hw/blob/main/fail_hw/reserve.sh
crontab : https://github.com/AntonKurapov66/backup_hw/blob/main/fail_hw/crontab.txt
