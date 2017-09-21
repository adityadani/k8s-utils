#!/bin/bash

for (( ; ; ))
do
mysqlslap -h MYSQL_SERVICE_HOST -p MYSQL_SERVICE_PORT -u sysadmin -pmypassword --concurrency=5 --iterations=20 --number-int-cols=2 --number-char-cols=3 --auto-generate-sql
slap_status=$?
if [ "$slap_status" != "0" ]; then
    echo -e "Mysql failed with error status: ${slap_status}"
    sleep 2
fi
done
