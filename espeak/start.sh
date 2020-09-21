#!/bin/bash
######################################################################
#                     WELCOME!                                       #
# file to convert tekst to speach                                    #
# WARNING: this file using espeak program                            #
# /usr/bin/espeak                                                    #
#                                                                    #
######################################################################
#
# (C) 2019-2020 Maciej Szeptuch
#
#
ESPEAK="`if [ -e "/usr/bin/espeak" ]; then echo "/usr/bin/espeak"; else echo \`which espeak\`;fi`"
if [ -e "./input.txt" ]; then
	input_file="./input.txt"
else
	read -p "enter input file name: " input_file
	if [ "$input_file" == "" ] || [ -n $input_file ]; then
		echo "ERROR: invailed input file name (file exists or filename is empty)"
		exit 1
	fi
fi
output_file="./output.mp3"
if [ -e $output_file ]; then
	echo "output - $output_file"
else
	echo "WARNING: output file doesn't exist"
	exit 1
fi

echo "editing file: $input_file..."
vi $input_file
echo "converting..."
espeak -v pl -f $input_file -w output.mp3
echo "playing mp3 file $output_file"
mplayer $output_file
