all:info

info:
	@echo '#################################'
	@echo '#				#'
	@echo '#				#'
	@echo '# some comment with makefile	#'
	@echo '#				#'
	@echo '# flag -n => not run just print	#'
	@echo '#				#'
	@echo '# 1. install			#'
	@echo '# 2. set_git:generate_ssh_key	#'
	@echo '# 3. generate_ssh_key		#'
	@echo '#				#'
	@echo '#				#'
	@echo '#################################'

install:
	sudo apt -y update
	sudo apt -y upgrade
	sudo apt-get -y install git
	sudo apt-get -y install g++
	sudo apt-get -y install rar
	sudo apt-get -y install vlc

set_git:generate_ssh_key
	git config --global user.email "jimmylin1017@gmail.com"
	git config --global user.name "jimmy"

generate_ssh_key:
	ssh-keygen -t rsa -b 4096 -C "jimmylin1017@gmail.com"
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_rsa
