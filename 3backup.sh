#!/bin/bash

#Author: KYash
#set -x #debug code
#set -e #exit script when error terminate further compilation
#set -o #-e with pipefail


#Creating Backup with Crontab
src=~/Documents/devops/1Linux/BashScript
tgt=~/Documents/backup

#Naming file
file_name=backup$(date | xargs | awk '{print $2"-"$3"-"$4 }')

#Compressing files
tar -czvf $tgt/$file_name.tar.gz $src


echo "Backup Completed."
