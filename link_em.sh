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
						echo "Removing ~/$DOTFILE and symlinking $DIR/$DOTFILE -> ~/$DOTFILE"
						rm -f ~/$DOTFILE
						ln -s $DIR/$DOTFILE ~/$DOTFILE
						break
						;;
						
					m|M|move|Move|MOVE)
						echo "Moving ~/$DOTFILE to ~/$DOTFILE.old and symlinking $DIR/$DOTFILE -> ~/$DOTFILE"
						mv -f ~/$DOTFILE ~/$DOTFILE.old
						ln -s $DIR/$DOTFILE ~/$DOTFILE
						break
						;;
						
					i|I|ignore|Ignore|IGNORE)
						echo "Ignoring new $DOTFILE"
						break
						;;
						
					a|A|append|Append|APPEND)
						echo "Appending $DIR/$DOTFILE to ~/$DOTFILE"
						cat $DIR/$DOTFILE >> ~/$DOTFILE
						break
						;;
						
					*)
						echo "Unrecognized response. Type 'r', 'm', 'i', or 'a' please."
						;;
						
				esac
			done
			
			echo
		
		else
			# the dotfile is not already in home dir, so just link it.
			ln -s $DIR/$DOTFILE ~/$DOTFILE
		fi
	fi	
done

echo "# Place BASH settings you want only applied to this machine in this file." >> ~/.local_bashrc

