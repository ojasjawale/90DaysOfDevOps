#!/bin/bash

# Create a temporary file
TEMP_FILE=$(mktemp)

# Ensure the temporary file is deleted upon script exit
trap "rm -f $TEMP_FILE" EXIT

echo "Temporary file created: $TEMP_FILE"

# Simulate some operations
echo "Performing some operations..."
sleep 3

# Simulate an unexpected exit
echo "Simulating an unexpected exit..."
exit 1

# Normal script exit point (this won't be reached due to the simulated exit)
echo "Script completed successfully."

