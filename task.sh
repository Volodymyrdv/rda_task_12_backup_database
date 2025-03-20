#! /bin/bash
mysqldump -u $DB_USER -p$DB_PASSWORD --databases ShopDB --result-file=backup1.sql
mysql -u $DB_USER -p$DB_PASSWORD ShopDBReserve < backup1.sql

mysqldump -u $DB_USER -p$DB_PASSWORD ShopDB --no-create-info --result-file=backup2.sql
mysql -u $DB_USER -p$DB_PASSWORD ShopDBDevelopment < backup2.sql
