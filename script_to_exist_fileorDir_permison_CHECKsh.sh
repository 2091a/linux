echo "Provid the file to inscept"
read file

if [ -e $file ];
then
	echo "file Found scanning......."
	if [ -f $file ];then
		echo "IT is a file"
	elif [ -d $file ];then
		echo "it is a directory"
	else
		echo "unable to process file type"
		exit
	fi

	if [ $? -eq 0 ];then
		echo "checking file permission"
		 [ -r $file ] && echo "file has read permison "
		 [ -w $file ] && echo "file has write permison "
		 [ -x $file ] && echo "file has exicute permison "
		fi

		if [ -f $file ];then
	         if  [ -s $file ]; then
			echo "File has content"
		else
			echo "File is empty NO content found inside file"
		fi
		fi



else
	echo "file not found!!!!"
	exit
fi
