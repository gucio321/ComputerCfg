.PHONY: Action needed to cnfigure Maciek user profile

## all: setup everything
all: install-pkgs gsettings bash vim

# gsettings: setup gnome
gsettings:
	/bin/bash -c "./scripts/setup_gnome.sh"

# install-pkgs: install dnf packages
install-pkgs:
	sudo dnf install -y $$(cat ./scripts/dnf_packages.txt)
	/bin/bash -c "./scripts/setup_audio.sh"

# bash: setup bash resources
bash:
	/bin/bash -c "./scripts/setup_resources.sh"

vim:
	/bin/bash -c "./scripts/vim.sh"
