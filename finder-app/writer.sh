#!/bin/bash

# Check if the correct number of arguments are provided
if [ $# -ne 2 ]; then
  echo "Error: Two arguments are required."
  echo "Usage: $0 <writefile> <writestr>"
  exit 1
fi

writefile=$1
writestr=$2

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Try to write the string to the file
echo "$writestr" > "$writefile" 2>/dev/null

# Check if the file was successfully written
if [ $? -ne 0 ]; then
  echo "Error: Could not create file $writefile"
  exit 1
fi

echo "File $writefile created successfully with the content: $writestr"

