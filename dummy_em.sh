#!/bin/bash

echo
echo "+------------------------------------------------------+"
echo "|                                                      |"
echo "|   Thank you for using github.com/atheiman/dotfiles   |"
echo "|                                                      |"
echo "+------------------------------------------------------+"
echo

# get location of dotfiles repo
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# for each dotfile
for DOTFILE in .[^.]*
do
	
	# no need to dummy .git
	if [ "$DOTFILE" != ".git" ]; then
		
		rm -f ~/$DOTFILE
		rm -f ~/$DOTFILE.old
		
		echo "one\ntwo\nthree" > ~/$DOTFILE
		
	fi
	
done


