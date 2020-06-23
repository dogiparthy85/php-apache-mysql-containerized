#!/bin/bash
/usr/bin/mysqld_safe --skip-grant-tables &
sleep 5
mysql -u root -e "CREATE DATABASE learningregistry"
mysql -u root learningregistry < /tmp/dump.sql
