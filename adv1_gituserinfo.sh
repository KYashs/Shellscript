#!/bin/bash

#Author:- KYash
set -exo

#GitHub api:
API_URL="https://api.github.com"

#Verifications
USERNAME= $username
TOKEN= $token


echo "Name of Repository:"

REPO_NAME=$2

echo "Username of Admin:"

REPO_OWNER=$1

#GET API Request to GitHub
	function github_api_get{
		local endpoint="$1"
		local url="${API}/${endpoint}"
	
		#Send GET authentication req
		curl -s -u "${USERNAME}:${TOKEN}" "$url"
		}
echo "Username of contributer:"
#List users with access
	function user_access {
		local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"
	
		#Fetch collaborators info	
		collaborators="(github_api_get "$endpoints" | jq -r '.[] | select(.permissions.pull == true) | .login')"
		if [[-z "$collaborators"]] ; then
			echo "None"
		else
			echo "$collaborators"
		fi
		}	
