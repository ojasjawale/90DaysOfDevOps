#!/bin/bash

# User input to create directory
read -p "Enter directory that you want to create: " dir

# Create directory
mkdir $dir

# Check if previous command executed or not
if [ $? -ne '0' ]; then
	echo "Sorry :( Failed to create directory $dir"
	exit 1
else
	echo "Directory '$dir' created successfully:)"
fi
