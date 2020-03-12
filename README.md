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
pushd
git clone https://github.com/fast-ide/bootstrap
cd bootstrap && make install
make install
popd
git clone https://github.com/fast-ide/fast-ide
cd fast-ide && make install
zsh -c "nvim +PlugInstall +qa"
```

### Font settings

```Shell
# this is required for OS that don't support non-ascii characters
git clone https://github.com/powerline/fonts
cd fonts
./install.sh
# select 'Ubuntu Mono' font in terminal preferences
```

