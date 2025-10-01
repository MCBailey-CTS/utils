#!/bin/bash
count=0 

for file in *; do 
    echo "Processing file: $file"
    while IFS= read -r line; do
        echo "$line"
    done < "$file"
done

