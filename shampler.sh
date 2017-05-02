
#Bash Sample Player.
#Zakie Hinds
if [ $# -lt 3 ]; then
	printf "You need to pass a few arguments\n First being the directory of your samples\n, Second (R to record new composition\n, or P to play a composition)\n Thirdly the name of the input or outputfile of compostion\n"
	exit
fi
if [ -d "$1" ]; then 
	cd $1
	printf "Switching to '$1' samples\n"
	#checks the existance of a head file which gives instructions to the user what to do
	#With their currently selected sample pack
	#So yes, anyone can create a sample pack and add it to the directory of sampler.sh
	#They just need to name the files accordingly and also include a file named "head"
	if [ ! -f "head" ]; then
		printf "head file missing, please make sure you include one!\n"
		exit
	else
		while read -r liness
		do
			echo $liness
		done < 'head'
	fi
else
	echo "invalid directory given, exting"
	exit
fi
#record mode turns on and waits for you to press the first note to start recording.
if [ "$2" == "R" ]; then 
	#read -rsn 1 char
	while true;

	do
		#This will read the first character typed, and move on.
		#while [ "$char" == ""]
		#do
		read -rsn 1 char
		#aplay -N

		case $char in 


			"q") aplay -q "c6.wav"
				echo $char>>"$3"	
				;;
			"2") aplay -q "c#6.wav"
				echo $char>>$3
				;;
			"w") aplay -q "d6.wav"
				echo $char>>$3
				;;
			"3") aplay -q "d#6.wav"
				echo $char>>$3
				;;
			"e") aplay -q "e6.wav"
				echo $char>>$3
				;;
			"r") aplay -q "f6.wav"
				echo $char>>$3
				;;
			"5") aplay -q "f#6.wav"
				echo $char>>$3
				;;
			"t") aplay -q "g6.wav"
				echo $char>>$3
				;;
			"y") aplay -q "a6.wav"
				echo $char>>$3
				;;
			"7") aplay -q "a#6.wav"
				echo $char>>$3
				;;
			"u") aplay -q "b6.wav"
				echo $char>>$3
				;;
			"i") aplay -q "c7.wav"
				echo $char>>$3
				;;
			"9") aplay -q "c#7.wav"
				echo $char>>$3
				;;
			"o") aplay -q "d7.wav"
				echo $char>>$3
				;;
			"0") aplay -q "d#7.wav"
				echo $char>>$3
				;;
			"p") aplay -q "e7.wav"
				echo $char>>$3
				;;
			"[") aplay -q "f7.wav"
				echo $char>>$3
				;;
			"=") aplay -q "f#7.wav"
				echo $char>>$3
				;;
			"]") aplay -q "g7.wav"
				echo $char>>$3
				;;
		esac
	done
elif [ "$2" == "P" ]; then 
	#Checks if the score file is there.
	if [ -f "$3" ]
	then

	printf "Playing a song...\n"
	#Score file is fed into "line" and goes the case line by line playing the according note to letter.
	while read -r line
	do
		echo "$line"
		case $line in 
			"v") 
					
				;;
			"q") aplay -q "c6.wav"
		
				;;
			"2") aplay -q "c#6.wav"
				
				;;
			"w") aplay -q "d6.wav"
				
				;;
			"3") aplay -q "d#6.wav"
				
				;;
			"e") aplay -q "e6.wav"
				
				;;
			"r") aplay -q "f6.wav"
				
				;;
			"5") aplay -q "f#6.wav"
				
				;;
			"t") aplay -q "g6.wav"
				
				;;
			"y") aplay -q "a6.wav"
				
				;;
			"7") aplay -q "a#6.wav"
				
				;;
			"u") aplay -q "b6.wav"
				
				;;
			"i") aplay -q "c7.wav"
				
				;;
			"9") aplay -q "c#7.wav"
				
				;;
			"o") aplay -q "d7.wav"
				
				;;
			"0") aplay -q "d#7.wav"
				
				;;
			"p") aplay -q "e7.wav"
				
				;;
			"[") aplay -q "f7.wav"
				
				;;
			"=") aplay -q "f#7.wav"
				
				;;
			"]") aplay -q "g7.wav"
				
				;;
		esac
	done < $3
	else
		printf "Score file not found, exiting\n"
		exit
	fi
else
	printf "You didn't specify Record or Playback, exitng \n"
fi

