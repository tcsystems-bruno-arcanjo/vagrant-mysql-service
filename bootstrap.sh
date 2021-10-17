#!/usr/bin/env bash

apt-get update
apt-get install -y mysql-server-5.7
mysql < /vagrant/mysql/script/user.sql
mysql < /vagrant/mysql/script/schema.sql
mysql < /vagrant/mysql/script/data.sql
cat /vagrant/mysql/mysqld.cnf > /etc/mysql/mysql.conf.d/mysqld.cnf
service mysql restart