#!/bin/bash
echo deb http://repo.r1soft.com/apt stable main >> /etc/apt/sources.list
wget http://repo.r1soft.com/r1soft.asc
apt-key add r1soft.asc 
apt-get update 
apt-get install serverbackup-enterprise-agent 


# Bash this script as a sudo at your Ubuntu machines for a agent to be installed.

# run the command below to give permission to backup server on the agent side; 
# r1soft-setup --get-key 3.131.141.205(Put your R1soft backup server IPv4 here)

# open the port 1167 
