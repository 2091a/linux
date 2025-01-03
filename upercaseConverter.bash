
display(){
	echo "file content--------"
cat "$1"
}

converter(){
	display "$1"
while read -r line; do
	echo "converting file to uper case"

	 upercase= "$line" | tr 'a-z' 'A-Z'
 	 "$upercase" > result.log
done < $1
echo "file converted to upercase sucessfully"
} 



if [ -f  "$1" ] ; then 
	converter "$1"
else
	echo "input file not found"
fi

	

