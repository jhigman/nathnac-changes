#!/bin/bash

empty_files=`find . -size 0`

if [ $empty_files ]; then
	echo "Empty files exist - not committing changes"
else
	echo "Committing changes with timestamp $timestamp.."
	timestamp=`date +"%Y-%m-%d %H:%M"`
	git commit -am "$timestamp"
	git push origin master
	echo "Finished"
fi

