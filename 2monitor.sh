#!/bin/bash

#Author: KYash
#set -x #debug code
#set -e #exit script when error terminate further compilation
#set -o #-e with pipefail

echo "List of S3 Buckets: $(aws s3 ls)"

echo "List of EC2 Instance in us-east-1 zone: $(aws ec2 describe-instances | jq '.Reservations[].Instaces[].InstanceId' )"
