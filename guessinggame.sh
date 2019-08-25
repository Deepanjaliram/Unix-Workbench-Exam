#Function to define if the guess is iqual to the number of files

function TorF {
if  [[ $guess -eq $nfiles ]]
then
	echo "You won! The number of files are:" $nfiles
	let stop=$stop+1 
elif [[ $guess -gt $nfiles ]]
then
	echo "There are few files than:" $guess
elif [[ $guess -lt $nfiles ]]
then
	echo "There are more files than:" $guess
fi
}

#Set the number of files
nfiles=$(ls -1 | wc -l)

#Boolean paramanter
stop=0 

#Program itself
while [[ $stop -eq 0 ]]
do 
	echo "Guess the number of files:"
	read guess
	TorF
done
