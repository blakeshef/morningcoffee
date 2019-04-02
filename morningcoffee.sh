#!/usr/bin/env bash

# morningcoffe script
# author: Blake
# like the first cup of coffee at work, just for your pc

main () {
	echo "Good Morning! Here is your digital coffee."
	# checks for updates
	sudo apt -qq update

	# update avaliable packages
	sudo apt upgrade
}

main '$@'
