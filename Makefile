all: requirements install

requirements:
	./requirements.sh

install:
	./install.sh
	./bootstrap.sh
	zsh -c "nvim +PlugInstall +qa && zsh"