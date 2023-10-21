#!/bin/bash
#Date: 21 Oct 23
#Author: KYash
#Version: 1

#set -x #debug code
#set -e #exit script when error terminate further compilation
#set -o #-e with pipefail


echo "******Shell Scripting Project******"

echo "Welcome User: $(whoami)"
echo "************"

echo "Today's date is: $(date | awk '{print $2, $3, $4}')"

echo "Time is: $(date | awk '{print $5, $6, $7}')"

echo "************Disc Usage************"

echo "Total: $(df -h | xargs | awk '{print $9}')"
 
echo "Used: $(df -h |xargs | awk '{print $10}')"

echo "Free: $(df -h |xargs | awk '{print $11}')"


echo "************RAM Utilization************"
echo "Total: $(free | xargs | awk '{print $8}')"
echo "Used: $(free | xargs | awk '{print $9}')"
echo "Free: $(free | xargs | awk '{print $10}')"

echo "************"

echo "Server uptime is: $(uptime)"
echo "************"



