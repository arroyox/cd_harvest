#!/bin/bash

# Check if a file is provided as an argument
if [ -z "$1" ]; then
echo "Usage: $0 filename"
exit 1
fi

FILENAME="$1"

# Check if the file exists
if [ ! -f "$FILENAME" ]; then
echo "File not found!"
exit 1
fi

# Read the file line by line
while IFS= read -r line; do
# Process the line
echo "Processing: $line"

# Wait for 5 seconds
sleep 5

# Print the response
echo "Completed: $line"
done < "$FILENAME"
