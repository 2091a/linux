dir="/home/vboxuser"

for file in "$dir"/*.csv ;do
	echo "$(basename $file) give new name for it"
	newname= read newname
	 mv $file $newname".csv"
	 [ $? -eq 0 ] && echo "name changed sucessfuly --"
 done

