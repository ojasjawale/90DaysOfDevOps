#!/bin/bash

# Prompt the user for the file name to read
read -p "Enter the file name you want to read: " file
error_file="error.log"

# Attempt to read the specified file and redirect error messages to error.log
cat "$file" 2> "$error_file"

# Check if an error was logged
if [ -s "$error_file" ]; then
    # Check specific error conditions
    if [ ! -f "$file" ]; then
        echo "Error: The file '$file' does not exist."
    # Check if file have read permission or not
    elif [ ! -r "$file" ]; then
        echo "Error: Permission denied. Unable to read the file '$file'."
    else
        echo "An unknown error occurred. Check $error_file for details."
    fi
else
    echo "File '$file' read successfully."
fi

