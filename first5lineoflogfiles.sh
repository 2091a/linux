dir="/home/vboxuser"

if [ ! -d "$dir" ];then
echo "directory not found"
fi


for file in "$dir"/.* ;do
	if [ -f "$file" ];then
	echo "$(basename $file)"
	head -n 5 $file
	echo "total lines in file $(bashname $file)"
	ls $file | wc -l
	echo "----------------------------------"
	fi
done


