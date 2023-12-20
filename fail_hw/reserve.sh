#!/bin/bash



cd /home/admin
rsync -a --checksum . /tmp/backup/

code="$(echo $?)"

if [ $(echo "${code}") -eq "0" ]
then
        echo "$(date +"%b %d %H:%M:%S") root rsync: Success backup home directory" >> /var/log/syslog
else
        echo "$(date +"%b %d %H:%M:%S") root rsync: Error backup: code error-"${code}")" >> /var/log/syslog
fi

sudo chown admin:admin /tmp/backup
