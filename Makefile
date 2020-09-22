.PHONY: Action needed to cnfigure Maciek user profile

# variables
repo_home = /home/mszeptuch/ComputerCFG


gsettings:
	/bin/bash -c "$(repo_home)/gsettings.sh"

# install in High Availability
install-pkgs:
	for pkg in `cat $(repo_home)/dnf.txt` do dnf -y install $pkg;done
