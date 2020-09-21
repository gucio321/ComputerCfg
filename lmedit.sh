#!/bin/bash
#lmedit version 1.3
if test $1 == "--create" || test $1 == "-c"; then
	filename="$2"
	if [ "$filename" == "" ]; then
		read -p "enter filename: " filename
		if [ "$filename" == "" ]; then
			echo "WARNING: filename cannot be empty"
			exit 1
		fi
	fi
	if [ -e "$filename" ]; then
		echo "WARNING: file $filename alredy exist, and cannot be create"
	else
		touch $filename
		echo -e "%% $filename\n%%" >> $filename
	fi
elif test $1 == "-a"; then
	filename=`date +matematyka_%d.%m.%Y.lm`
	if [ -e "$filename" ]; then
		echo "WARNING: file $filename alredy exist, and cannot be create"
	else
		touch $filename
		echo -e "%% $filename\n%%" >> $filename
	fi
else
	filename="$1"
	if [ "$filename" == "" ]; then
		read -p "enter filename: " filename
		if [ "$filename" == "" ]; then
			echo "WARNING: filename cannot be empty"
			exit 1
		fi
	fi
	touch $filename
fi
VIM="/usr/bin/vim"
XCLIP="/usr/bin/xclip"
$VIM $filename
if [ -e $filename ]; then
	cat $filename |$XCLIP
fi
