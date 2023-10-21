#!/bin/bash

#Author: KYash

#Creating Backup with Crontab

src=~/Documents/devops/1Linux/BashScript
tgt=~/Documents/backup
file_name=backup$(date | xargs | awk '{print $2"-"$3"-"$4 }')

#Compressing files
tar -czvf $tgt/$file_name.tar.gz $src

echo "Backup Completed."
