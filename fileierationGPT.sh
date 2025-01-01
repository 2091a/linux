#!/bin/bash

# Define the directory path
dir_path="/home/vboxuser"

# Initialize counters
file_count=0
dir_count=0

# Check if the directory exists
if [ ! -d "$dir_path" ]; then
    echo "Error: Directory does not exist: $dir_path"
    exit 1
fi

# Iterate over items in the directory
for item in "$dir_path"/* "$dir_path"/.*; do
    # Skip special directories "." and ".."
    if [[ $(basename "$item") == "." || $(basename "$item") == ".." ]]; then
        continue
    fi
    
    if [ -f "$item" ]; then
        echo "File: $(basename "$item") Size: $(stat -c%s "$item") bytes"
        ((file_count++))
    elif [ -d "$item" ]; then
        echo "Directory: $(basename "$item")"
        ((dir_count++))
    fi
done

# Display total counts
echo "Total files: $file_count & Total directories: $dir_count"
