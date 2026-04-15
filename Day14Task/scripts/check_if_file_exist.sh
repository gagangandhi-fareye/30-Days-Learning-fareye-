#!/bin/bash
#
#
#if condition is used to check whether this or that
#if --> then 
if [ -f  /"etc/passwd" ]; then
	echo "File Exists"
else 
	echo "File does not exists"
fi

