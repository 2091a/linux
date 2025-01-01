#!/bin/bash

dir_path="/home/vboxuser"

file_count=0
dir_count=0

echo "Directory path: $dir_path"
ls -la "$dir_path"  # List contents to verify accessibility

for item in "$dir_path"/*; do
    echo "Processing item: $item"  # Debug message
    if [ -f "$item" ] ; then
        echo "File: $(basename "$item") Size: $(stat -c%s "$item") bytes"
        ((file_count++))
    elif [ -d "$item" ]; then
        echo "Directory: $(basename "$item")"
        ((dir_count++))
    fi
done

echo "Total files: $file_count & Total directories: $dir_count"
