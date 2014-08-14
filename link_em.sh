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
	
	# no need to link $DIR/.git to ~/.git
	if [ "$DOTFILE" != ".git" ]; then
		
		# if dotfile already exists
		if [ -f ~/$DOTFILE ]; then
			
			# remove, move, ignore, or append dotfile
			echo "Found ~/$DOTFILE already created. You have four options:"
			echo "  [r]emove ~/$DOTFILE and create symlink to new $DOTFILE"
			echo "  [m]ove ~/$DOTFILE to ~/$DOTFILE.old and create symlink to new $DOTFILE"
			echo "  [i]gnore new $DOTFILE and you keep using the original ~/$DOTFILE"
			echo "  [a]ppend the new $DOTFILE to your old ~/$DOTFILE"
			
			# Handle the input
			while true
			read -p "What should I do ([r]emove is default)? [r | m | i | a] " RESPONSE
			do
				case $RESPONSE in
					r|R|remove|Remove|REMOVE|"")
						echo "Response received: REMOVE"
						break
						;;
					m|M|move|Move|MOVE)
						echo "move"
						break
						;;
					i|I|ignore|Ignore|IGNORE)
						echo "ignore"
						break
						;;
					a|A|append|Append|APPEND)
						echo "append"
						break
						;;
					*)
						echo "Unrecognized response. Type 'r', 'm', 'i', or 'a' please."
						;;
				esac
			done
		fi
		
		echo "Removing ~/$DOTFILE"
		rm -f ~/$DOTFILE
		# echo "Moving ~/$DOTFILE to ~/$DOTFILE.old"
		# mv -fv ~/$DOTFILE ~/$DOTFILE.old
		echo "Symlinking ~/$DOTFILE to $DIR/$DOTFILE"
		ln -s $DIR/$DOTFILE ~/$DOTFILE
		
	fi
	
	echo
	
done


