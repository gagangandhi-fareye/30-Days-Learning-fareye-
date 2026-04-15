#!/bin/bash
#
checkuser($1){
	read -p "Enter the username: " $1 

	if id "$1" &>/dev/null; then
        	echo "THe user $1 exists."
        	exit 1
	else 
        	echo " THe user $1 does not exist."
       		 read -p "Enter the Password: " password
        
	fi
	read -p "Enter the username: " username

	sudo useradd -m username -p password 

	echo "user added successfully"


	createuser($1)
