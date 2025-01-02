displaymenu(){
echo "Enter you choise"
echo "1 to print 1111111111111111"
echo "2 to print 222222222222222"
echo "3 to print 333333333333333"
echo "4 to print 44444444444444"
echo "5 to exit"
read input
hendlinput "$input" 

}
hendlinput(){
case $1 in
	1)
		echo 11111111111111111111111
		;;
	2)
		echo 2222222222222222222222222
		;;
	3)
		echo 333333333333333333333333
		;;
	4)
		echo 44444444444444444444
		;;
	5)
		quit
		;;
	*)
		echo "enter a valid input"
		;;
esac
}

quit(){
	echo "exiting program"
exit 1
}


displaymenu  
