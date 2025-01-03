dir="/home/vboxuser"

for file in "$dir"/*.csv; do
	if [ ! -f $file ];then
		echo "no csv file found in $dir"
		break
	fi
	echo "$(basename $file) give new name for it"
	 read newname
	 if [ -f "$dir/$newname.csv" ];then
		 echo "file already exists"
		 continue
	 fi

	 newfile= "$dir/$newname.csv"
	 mv "$file" "$newfile"
	 [ $? -eq 0 ] && echo "name changed sucessfuly --"
 done

