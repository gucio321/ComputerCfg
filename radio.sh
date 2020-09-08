#!/bin/bash
#radio
echo "welcome in internet radio script"
if [ "$1" == "" ]; then
	echo """
	1) wnet
	2) rmf fm
	3) program pierwszy polskiego radia
	"""
elif [ $1 == "1" ] || [ $1 == "wnet" ]; then
	mplayer http://audio.radiownet.pl:8000/stream64
elif [ $1 == "2" ] || [ $1 == "rmf" ]; then
	mplayer http://195.150.20.5:80/rmf_fm
elif [ $1 == "3" ] || [ $1 == "jedynka" ]; then
	mplayer http://stream3.polskieradio.pl:8900/
else
	echo "unexpected argument"
fi
echo "thanx for using this programm"
