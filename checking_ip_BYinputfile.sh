checkingip() {
	machine=$1
	echo "pining $macchine----"

	#check status of last command
	if ping -c 3 "$machine" &>/dev/null;
	then
		echo "Ping Sucessfully"
	else
		echo "Some probleme found"
	fi
}

#reding file
echo "Pless provide the input name that contain ip address"
read -r inputFile

if [ ! -f "$inputFile" ];
then
	echo "$inputFile not found"
	exit 1
elif [ ! -s "$inputFile" ];
then
	echo "$inputFile file found empty"
	exit 1
fi

#main 
while IFS= read -r machine_ip; do
	#skip empty line in file
	[[ -z "$machine_ip" ]] && continue
	if [[ "$machine_ip" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
	checkingip "$machine_ip"
else
	echo "Invalid IP $machine_ip skiped"
	fi
done < "$inputFile"
