SHELL = /bin/bash

all: requirements install

requirements:
	./requirements.sh

install:
	./install.sh
	./bootstrap.sh

docker-build:
	./scripts/docker_build.sh

docker-deploy:
	./scripts/docker_deploy.sh