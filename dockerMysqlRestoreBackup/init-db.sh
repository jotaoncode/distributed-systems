#!/bin/sh

mysql -u root -pmy-secret-pw < /docker-entrypoint-initdb.d/mysql.sql
