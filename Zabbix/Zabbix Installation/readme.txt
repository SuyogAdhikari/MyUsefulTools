*****Zabbix 6.0 LTS Installation Script*****
This script automates the installation process of Zabbix 6.0 LTS server, frontend and agent on Ubuntu 20.04 using mysql and Apache web server.

****Prerequisites****
    Ubuntu 20.04 with a running MySQL database server.
    Root or sudo access to the server.

****Usage****
    Clone the repository to your server.
        git clone https://github.com/SuyogAdhikari/ToolBox.git
    
    Navigate to the script directory.
        cd ToolBox/Zabbix/ZabbixInstallation

    Make the script executable.
        chmod +x install.sh

    Run the script as root or with sudo privileges.
        sudo ./install.sh

You will be prompted to enter a password for the Zabbix database user. This password will be used in the Zabbix configuration file.

The script will install and configure Zabbix server, frontend, and agent on your Ubuntu 20.04 server. The Zabbix web interface will be accessible at http://host/zabbix. The default username and password is Admin;zabbix.