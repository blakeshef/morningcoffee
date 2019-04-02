#!/usr/bin/env bash

# morningcoffe script
# author: Blake
# like the first cup of coffee at work, just for your pc

main () {
	printf "Good Morning! Here is your digital coffee.\n\n"
	sudo apt -qq update
	askToUpgrade
}

askToUpgrade () {
	# function that asks the user for permission to upgrade pagages that have updates
	
	# sets up a loop that will exit upon sucsessfull input
	while true
	do
		printf "\n"
		printf "Would you like to update these packages? (y/n) "
		
		# grab input
		read ask

		# checks if the input for validity
		if [[ $ask == "y" ]] || [[ $ask == "Y" ]]
		then
			# does an update with apt
			sudo apt upgrade
			# breaks out of the loop
			break
		elif [[ $ask == "n" ]] || [[ $ask == "N" ]]
		then
			printf "\nNo Problem!\n\n"
			# breaks out of the loop
			break
		else
			# prints error message and loops
			printf "\nI don't understand\n"
		fi
	done

}

main '$@'
