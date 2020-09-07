#!/bin/bash
#important days in the year
data=`date +%F`
mounth=`date +%m`
day=`date +%d`
christmas=`echo "$day>10" |bc`
lastlog=`last -3F|grep \`echo "$day -1" |bc \` |wc -l`

if [ "$mounth" == "12" ] && [ "$day" == "06" ]; then
echo """
++++++++++++++++++++++++++++++++++++++++++++++++++++
+ HAPPY BIRTHDAY DIR USER!                         +
+                                                  +
+ Happy birthday to you, happy birthday to you...  +
+ Happy birthday dir user...                       +
+ Happy birthday to you...                         +
++++++++++++++++++++++++++++++++++++++++++++++++++++
"""
elif [ $mounth == "12" ] && [ $christmas == 1 ]; then

echo '''
/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
\ We wish you a Merry Christmas;   /
/ We wish you a Merry Christmas;   \
\ We wish you a Merry Christmas    /
/ and a Happy New Year.            \
\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
'''
fi
