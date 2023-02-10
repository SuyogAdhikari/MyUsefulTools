## Zabbix 6.0 LTS Installation Script

### Prerequisites
- Ubuntu 20.04 with a running MySQL database server.
- Root or sudo access to the server.

### Usage
1. Clone the repository to your server.
```git clone https://github.com/SuyogAdhikari/ToolBox.git```

2. Navigate to the script directory.
```cd ToolBox/Zabbix/ZabbixInstallation```
3. Make the script executable.
```chmod +x install.sh```
4. Run the script as root or with sudo privileges.
```sudo ./install.sh```

5. You will be prompted to enter a password for the Zabbix database user. This password will be used in the Zabbix configuration file.
6. The script will install and configure Zabbix server, frontend, and agent on your Ubuntu 20.04 server. The Zabbix web interface will be accessible at `http://host/zabbix`. The default username and password is `Admin`;`zabbix`.








