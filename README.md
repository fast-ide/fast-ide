[![Build Status](https://travis-ci.org/rusdevops/fast-ide.svg?branch=master)](https://travis-ci.org/rusdevops/fast-ide)

💨 The **Fast IDE** you can only dream of ⛅

### Run

```Shell
docker pull fastide/ubuntu:19.04
docker run -it fastide/ubuntu:19.04 zsh -c "nvim +PlugInstall +qa && zsh"
```

### Deploy

```Shell
# on Ubuntu Disco 🕺
docker pull fastide/ubuntu:19.04
docker create -ti --name fastide fastide/ubuntu:19.04 bash
docker cp fastide:/home/developer /home/developer # docker rm -f fastide
sudo useradd developer && sudo passwd developer
sudo chown -R developer /home/developer
su - developer
zsh -c "nvim +PlugInstall +qa && zsh"
```

### Install

```Shell
# on the newly installed macOS 🍎
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
./bootstrap.sh
zsh -c "nvim +PlugInstall +qa && zsh"
```

```Shell
# on the newly installed Linux 🐧
./install.sh
./requirements.sh
# restart OS
./bootstrap.sh
zsh -c "nvim +PlugInstall +qa && zsh"
```
