#!/bin/bash
echo deb http://repo.r1soft.com/apt stable main >> /etc/apt/sources.list
wget http://repo.r1soft.com/r1soft.asc
apt-key add r1soft.asc 
apt-get update  -y
apt-get install serverbackup-enterprise   -y
serverbackup-setup  --user     admin  --pass   redhat

# Bash this script as a sudo at your main host to control other r1soft agents. Use your IPv4 to connect to server backup site.

# Restart the R1Soft CDP Server service by below command; 
# systemctl restart sbm-server
# systemctl status sbm-server.service   = verify that if server active

# username:admin  password:redhat

# open the port 1167 