#!/bin/bash

mysqldump -Y example > dumpdb.sql
mysql -e "drop database if exists sample;"
mysql -e "create database sample;"
mysql sample < dumpdb.sql

mysql -t << MYSQL_SCRIPT
SHOW DATABASES;
USE sample
SELECT * FROM users;
\q
MYSQL_SCRIPT
