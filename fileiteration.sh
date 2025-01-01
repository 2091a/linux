#!bin/bash

#echo "directory path to calculate"
dir_path="/home/vboxuser"

file_count=0
dir_count=0

for item in "$dir_path"/*; do
	if [ -f "$item" ] ; then
		echo "file: $(basename "$item") size: $(stat -c%s "$item") bytes"
		file_count=$((file_count + 1))
	elif [ -d "$item" ];
	then
		echo "directory: $(basename "$item")"
		dir_count=$((dir_count + 1))
	fi
done
	echo "Total files: $file_count & Total dirctory: $dir_count"
