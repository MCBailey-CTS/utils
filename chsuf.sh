#!/bin/bash

# Check if prefix argument is provided
if [ -z "$1"  ]; then
    echo "Usage: $0 <suffix> <suffix_prefix>"
    exit 1
fi

if [ -z "$2"  ]; then
    echo "Usage: $0 <suffix> <suffix_prefix>"
    exit 1
fi

suffix="$1"
new_suffix="$2"

# Loop over files in current directory
for file in *; do
    
    # Check if file starts with the prefix
    if [[ "$file" == *"$suffix" ]]; then
        newname="${file%$suffix}"  # Remove prefix
        mv -i -- "$file" "$newname$new_suffix"
    fi
    
    
    
done

