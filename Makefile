.PHONY: Action needed to cnfigure Maciek user profile

## all: setup everything
all: install-pkgs gsettings

gsettings:
	/bin/bash -c "./scripts/setup_gnome.sh"

install-pkgs:
	sudo dnf install -y $$(cat ./scripts/dnf_packages.txt)
	/bin/bash -c "./scripts/setup_audio.sh"
