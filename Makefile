SHELL=/bin/bash

export PATH := ${HOME}/.local/bin:${HOME}/.node_modules/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:${HOME}/bin

# PWD:=$(pwd)
CONF:=${HOME}/.config

test: ## ongoing tests
	@echo ${CONF}/

init: ## Initial setup like making default directories
	@mkdir -vp ${HOME}/.config ${HOME}/.cache ${HOME}/.scripts ${HOME}/.local ${HOME}/.local/bin ${HOME}/.local/share

# neomutt: ## Init neomutt mail client
# 	sudo pacman -S neomutt
# 	mkdir -p ${HOME}/.mutt
# 	ln -vsf ${PWD}/.muttrc ${HOME}/.muttrc
# 	ln -vsf ${PWD}/.mutt/mailcap ${HOME}/.mutt/mailcap
# 	ln -vsf ${PWD}/.mutt/certificates ${HOME}/.mutt/certificates
# 	ln -vsf ${PWD}/.mutt/aliases ${HOME}/.mutt/aliases
# 	ln -vsf ${PWD}/.mutt/signature ${HOME}/.mutt/signature
# 	# ln -vsf ${PWD}/.goobookrc ${HOME}/.goobookrc
# 	# yay -S goobook-git
# 	# goobook authenticate

alacritty: ## Init alacritty
	sudo pacman -S alacritty
	test -L ${CONF}/alacritty/alacritty.yml || rm -rf ${CONF}/alacritty/alacritty.yml
	cp -r ${CONF}/alacritty ${CONF}/

tlp: ## Setting for power saving and preventing battery deterioration
	sudo pacman -S tlp powertop
	systemctl enable tlp.service
	systemctl enable tlp-sleep.service

music: ## Setting ncmpcpp, mpd, mpc for music stuff
	sudo pacman -S ncmpcpp mpd mpc
	cp -r ${PWD}/.config/ncmpcpp ${CONF}/

bluetooth-music: ## Bluetooth audio config
	sudo pacman -S pulseaudio pulseaudio-bluetooth bluez-utils bluez-hid2hci
	sudo rfkill unblock bluetooth
	modprobe btusb
	sudo systemctl enable bluetooth.service
	sudo systemctl start bluetooth
	# bluetoothctl
	# power on
	# scan on
	# pair XX:XX...
	# connect XX:XX... (if fails once try 4 to 5 more times)

docker: ## Docker initial setup
	sudo pacman -S docker docker-compose
	sudo usermod -aG docker ${USER}
	sudo systemctl enable docker.service
	sudo systemctl start docker.service

django: ## Install Django
	mkdir -p ${HOME}/src/github.com/masasam/mydjango;\
	cd ${HOME}/src/github.com/masasam/mydjango;\
	touch Pipfile;\
	pipenv --python=3.8.6;\
	pipenv install django;\
	pipenv run django-admin startproject config .

android: ## Install android-studio
	yay -S android-studio
	# dont forget to update .bashrc file

flutter: ## Install flutter
	mkdir -p ~/src/github.com/flutter
	cd ~/src/github.com/flutter;\
	wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.9.1+hotfix.6-stable.tar.xz;\
	tar xf flutter_linux_v1.9.1+hotfix.6-stable.tar.xz

spotify: ## Install spotify
	gpg --keyserver hkp://keyserver.ubuntu.com --receive-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
	yay -S spotify

chromium: ## Install chromium and noto-fonts
	sudo pacman -S noto-fonts noto-fonts-cjk
	sudo pacman -S chromium
	# yay -S brave-bin

neovim: ## Init neovim
	sudo pacman -S neovim
	cp -r ${PWD}/nvim ${CONF}/
	echo "\nNow open nvim and do :PlugInstall in command mode"
	# sudo cp -r ${PWD}/usr/share/applications/nvim.desktop /usr/share/applications/nvim.desktop

pipinstall: ## Install python packages
	mkdir -p ${HOME}/.local
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
	python ${PWD}/get-pip.py --user
	sudo ln -vsf ${PWD}/usr/share/zsh/site-functions/_pipenv /usr/share/zsh/site-functions/_pipenv
	pip install --user --upgrade pip
	pip install --user neovim

scrot: ## Init scrot and some of its shortcut
	sudo pacman -S scrot
	cp ${PWD}/scripts/s ${HOME}/.local/bin/s

backup: ## Backup arch linux packages
	mkdir -p ${PWD}/archlinux
	pacman -Qnq > ${PWD}/archlinux/pacmanlist
	pacman -Qqem > ${PWD}/archlinux/aurlist

update: ## Update arch linux packages and save packages cache 3 generations
	yay -Syu; paccache -ruk0

pipbackup: ## Backup python packages
	mkdir -p ${HOME}/.local/backup
	pip freeze > ${HOME}/.local/backup/pipbackup

piprecover: ## Recover python packages if backuped earlier
	pip install --user -r ${HOME}/backup/pipbackup

pipupdate: ## Update python packages
	pip list --user | cut -d" " -f 1 | tail -n +3 | xargs pip install -U --user

# clean:
# 	rm -f some_dir

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(PWD)/Makefile \
	| sort \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
