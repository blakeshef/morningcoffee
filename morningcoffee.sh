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
	while true
	do
		printf "\n"
		printf "Would you like to update these packages?"
		read ask
		if [[ $ask == "y" ]] || [[ $ask == "Y" ]]
		then
			sudo apt upgrade
			break
		elif [[ $ask == "n" ]] || [[ $ask == "N" ]]
		then
			printf "\nNo Problem!\n\n"
			break
		else
			printf "\nI don't understand\n"
		fi
	done

}

main '$@'
