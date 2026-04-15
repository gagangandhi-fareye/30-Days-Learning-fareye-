#!/bin/bash
#
#

read -p "Enter the name of the package" $package_name 

echo "Updating System and Installing package"

sudo apt-get update
sudo apt install $package_name -y

$package_name --version

if [ "$package_name" == "docker" ]; then
    sudo systemctl start docker
else
    sudo systemctl start "$package_name"
fi

systemctl status docker
