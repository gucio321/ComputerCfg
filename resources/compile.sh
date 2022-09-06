#!/bin/bash
#destination="`pwd`/main.bin"
destination="/tmp/compilation.bin"
templates="$HOME/Templates"
echo $input_file
if test $1 == "--create"; then
	input_file="$2"
	if [ "$input_file" == "" ]; then
	  read -p "file: " input_file
	fi
	cp -n $templates/template.cpp $input_file
else
	input_file="$1"
	if [ "$input_file" == "" ]; then
	  read -p "file: " input_file
	fi
fi

vim $input_file


#if [ "`cat $input_file |head -n1`" == "// c++" ] || [ "$input_file" == "*cpp" ]; then
	GPP=`which g++`
	CHMOD=`which chmod`
	mod="755"
	if [ "$?" != "0" ]; then
	  exit 1
	fi
	arg="--output $destination"
	
	

	echo "compiling..."
	$GPP $arg $input_file
	
	if [ "$?" != "0" ]; then
	   echo -e "!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n! Error durring compiling. !\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	   exit 1
	fi
	
	echo "changing mods..."
	$CHMOD $mod $destination
	clear
	echo -e "==================\n=    PROGRAM     =\n==================\n"
	
	
	$destination
	
	
	echo -e "\n\n\n==================\n=  Exit code: $?  =\n=================="
#fi
