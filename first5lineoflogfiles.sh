dir="/home/vboxuser"

if [ ! -d "$dir" ];then
echo "directory not found"
fi


for file in "$dir"/.* ;do
	if [ -f "$file" ] && [ -s $file ];then
	echo "$(basename $file)"
	head -n 5 "$file"
	echo "total lines in file $(bashname $file)"
	total_word_count=$(wc -l < "$file")	
	echo $total_word_count
	echo "----------------------------------"
	fi
done


