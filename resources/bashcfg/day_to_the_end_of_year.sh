#!/bin/bash

daysPerYear="365"
eyDate="2023-04-30"
eyYearDay=`date --date=$eyDate +%j`
cYearDay=`date +%j`
cYear=`date +%Y`
eyYear=`date --date=$eyDate +%Y`
result="0"

# jeśli jesteśmy już w tym samym roku
if [ "$cYear" == "$eyYear" ]; then
	result=`echo "$eyYearDay-$cYearDay" |bc`
elif [ "$cYear" -lt "$eyYear" ]; then
	result=`echo "$daysPerYear-$cYearDay+$eyYearDay" |bc`
else
	result="Err"
fi

function stars() {
if [ "$result" -gt "100" ]; then
  for i in `seq 36`; do
    echo -n "*"
  done
elif [ "$result" -lt "100" ] && [ $result -gt "9" ]; then
  for i in `seq 35`; do
    echo -n "*"
  done
else
  for i in `seq 34`; do
   echo -n "*"
 done
fi
}

stars
echo -e "\n* pozostalo $result dni do konca roku! *"
stars
echo -ne "\n"
