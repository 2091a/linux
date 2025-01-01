#!bin/bash

#echo "directory path to calculate"
dir_path="/home/vboxuser"

file_count=0
dir_count=0

for item in "$dir_path"/*; do
	if [ -f "$item" ] ; then
		echo "file: $(basename "$item") size: $(stat -c%s "$item") byts"
		((file_count++))
	elif [ -d "$item" ];
	then
		echo "directory: $(basename "$item")"
		((dir_count++))
	fi
done
	echo "Total files: $file_count & Total dirctory: $dir_count"
