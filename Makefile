install:
	rm $(HOME)/.config/zsh/.zshrc
	ln -s $(shell pwd)/zshconf/.zshrc $(HOME)/.config/zsh/.zshrc
PHONY: install