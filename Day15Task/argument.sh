#!/bin/bash
#
echo $1

sudo apt-get update && sudo apt-get install $1 -y 

echo "successfully installed $1"

