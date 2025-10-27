#!/bin/bash

# Check if prefix argument is provided
if [ -z "$1"  ]; then
    echo "Usage: $0 <prefix> <new_prefix>"
    exit 1
fi


if [ -z "$2"  ]; then
    echo "Usage: $0 <prefix> <new_prefix>"
    exit 1
fi

prefix="$1"
new_prefix="$2"

count=0
# Loop over files in current directory
for file in *; do
    
    # Check if file starts with the prefix
    if [[ "$file" == *"$prefix"* ]]; then
        newname="${file#$prefix}"  # Remove prefix
        mv -i -- "$file" "$new_prefix$newname"
        ((count++))
    fi
    
    
    
done
echo "Renamed $count files."

