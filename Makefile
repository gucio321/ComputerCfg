.PHONY: Action needed to cnfigure Maciek user profile

## all: setup everything
all: install-pkgs gsettings bash vim snap brave keybase

# gsettings: setup gnome
gsettings:
	/bin/bash -c "./scripts/setup_gnome.sh"

# install-pkgs: install dnf packages
install-pkgs:
	sudo dnf install -y $$(cat ./scripts/dnf_packages.txt)
	/bin/bash -c "./scripts/setup_audio.sh"
	echo "log out and back in and then run make snap"

# bash: setup bash resources
bash:
	/bin/bash -c "./scripts/setup_resources.sh"

vim:
	/bin/bash -c "./scripts/vim.sh"

snap:
	sudo systemctl enable --now snapd
	sudo snap install electron-mail

brave:
	sudo dnf install -y dnf-plugins-core
	sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
	sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
	sudo dnf install -y brave-browser

keybase:
	sudo yum install -y https://prerelease.keybase.io/keybase_amd64.rpm
	run_keybase
