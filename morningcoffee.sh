#!/usr/bin/env bash

# morningcoffe script
# author: Blake
# like the first cup of coffee at work, just for your pc

main () {
	echo "Good Morning! Here is your digital coffee."
	sudo apt -qq update
	sudo apt upgrade
}

main '$@'
