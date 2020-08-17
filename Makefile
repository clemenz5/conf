install:
	# install yay
	sudo pacman -S yay
	sudo pacman-mirrors --fasttrack

	# install packagelist
	yay -S $(shell cat ~/conf/packagelist)

	# add binaries to path
	# echo 'export PATH="~/conf/bin:$(PATH)"' >> zshconf/.zshrc

	# link zshrc to correct destination
	# [ -f $(HOME)/.zshrc ] && rm $(HOME)/.zshrc && ln -s $(shell pwd)/zshconf/.zshrc $(HOME)/.zshrc
	# [ -f $(HOME)/.config/zsh/.zshrc ] && rm $(HOME)/.config/zsh/.zshrc && ln -s $(shell pwd)/zshconf/.zshrc $(HOME)/.config/zsh/.zshrc
PHONY: install