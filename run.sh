#!/bin/bash
echo "Setting up your new Fedora!"
echo "installing packages..."
for i in `cat dnf.txt`; do
        sudo dnf install -y $i
done

echo "setting up gnome..."
sh gsettings.sh
echo "done!"
