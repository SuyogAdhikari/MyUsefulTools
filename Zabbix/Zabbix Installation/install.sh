# Installation of Zabbix 6.0 LTS Server, Frontend and Agent on Ubuntu 20.04 using mysql and Apache web server

#!/bin/bash

read -p "Enter password for Zabbix database: " password

# Install Zabbix repository
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-4%2Bubuntu20.04_all.deb
dpkg -i zabbix-release_6.0-4+ubuntu20.04_all.deb
apt update

# Install Zabbix server, frontend, agent
apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent

# Create initial database
mysql -uroot -p -e "CREATE DATABASE zabbix CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;"
mysql -uroot -p -e "CREATE USER zabbix@localhost IDENTIFIED BY '$password';"
mysql -uroot -p -e "GRANT ALL PRIVILEGES ON zabbix.* TO zabbix@localhost;"
mysql -uroot -p -e "SET GLOBAL log_bin_trust_function_creators = 1;"
zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | mysql --default-character-set=utf8mb4 -uzabbix -p"$password" zabbix
mysql -uroot -p -e "SET GLOBAL log_bin_trust_function_creators = 0;"

# Configure the database for Zabbix server
echo "DBPassword=$password" >> /etc/zabbix/zabbix_server.conf

# Start Zabbix server and agent processes
systemctl restart zabbix-server zabbix-agent apache2
systemctl enable zabbix-server zabbix-agent apache2
