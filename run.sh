#!/bin/bash
echo "Setting up your new Fedora!"
echo "installing packages..."
sudo dnf install $(cat dnf.txt)

echo "setting up gnome..."
sh gsettings.sh
echo "done!"
