#!/bin/bash

while IFS= read -r filename; do
    if [[ -e "$filename" ]]; then
        rm "$filename"
        echo "Removed: $filename"
    else
        echo "File not found: $filename"
    fi
done < rem.txt
