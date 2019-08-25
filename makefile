#Set the number of files
lines=$(wc -l < guessinggame.sh)

#Set date and Time
var=$(date +"%D %T")

#Create the readme file and put the title
echo "# GUESSING GAME" > readme.md

#Put date and time 
echo "-Date and time:" $var >> readme.md 

#Put number of lines 
echo "-Lines:" $lines >> readme.md


