all: install

install:
	./requirements.sh
	./bootstrap.sh
	zsh -c "nvim +PlugInstall +qa && zsh"