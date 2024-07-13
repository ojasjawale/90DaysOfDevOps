#!/bin/bash

# User input to create file
read -p "Enter filename with absolute path that you want to create: " file

# Create directory
touch $file

# Check if previous command executed or not
if [ $? -ne '0' ]; then
	echo "Sorry :( Failed to create file $file"
	exit 1
else
	echo "File '$file' created successfully:)"
fi
