#!/bin/bash

# Declare variables for file and error.log
read -p "Enter file name that your want to read: " file
error_file="error.log"

# Attempt to read non_existing file and redirect error message to error.log
cat "$file" 2> "$error_file"

# Check is error was logged?
if [ -s "$error_file" ]; then
	echo "An error occurred. Check $error_file for details."
else
	echo "File read successfully."
fi 
