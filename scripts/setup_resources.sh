#!/bin/bash

src=`dirname $0`
echo $src
resources=$src/../resources
echo $resources

if [[ ! -e $resources ]]; then
        echo "missing resource folder!"
        exit 1
fi

if [[ ! -e ~/bin ]]; then
        echo "Creating bin folder"
        mkdir ~/bin
fi

echo "copying bin scripts"
cp $resources/bin/* ~/bin

for i in `ls $resources/bashcfg`; do 
        echo "copying $i"
        cp $resources/bashcfg/$i ~/.$i
done
