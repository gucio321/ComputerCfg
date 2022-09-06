#!/bin/bash
gsettings list-recursively > /tmp/befor
echo -n "press ENTER after changes"
read
gsettings list-recursively > /tmp/after
sdiff /tmp/befor /tmp/after > /tmp/diffrents
#clear
#cat /tmp/diffrents
echo -e "\n\n\n"
cat /tmp/diffrents |grep "|"
