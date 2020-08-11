install:
	# add binaries to path
	echo "export PATH="$(shell pwd)/bin:$(PATH)"" >> zshconf/.zshrc

	# link zshrc to correct destination
	[ -f $(HOME)/.zshrc ] && rm $(HOME)/.zshrc && ln -s $(shell pwd)/zshconf/.zshrc $(HOME)/.zshrc
	[ -f $(HOME)/.config/zsh/.zshrc ] && rm $(HOME)/.config/zsh/.zshrc && ln -s $(shell pwd)/zshconf/.zshrc $(HOME)/.config/zsh/.zshrc
PHONY: install$(shell pwd)