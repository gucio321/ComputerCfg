.PHONY: Action needed to cnfigure Maciek user profile

## all: setup everything
all: install-pkgs gsettings

gsettings:
	/bin/bash -c "./gsettings.sh"

install-pkgs:
	sudo dnf install $$(cat dnf.txt)
