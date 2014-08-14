#!/bin/bash

for i in .[^.]*
	do
		if [$i != '.git']; then
			echo $i
		fi
	done

