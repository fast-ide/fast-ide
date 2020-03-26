![ci_dockerfile](https://github.com/fast-ide/fast-ide/workflows/ci_dockerfile/badge.svg?branch=master)
[![Build Status](https://travis-ci.org/fast-ide/fast-ide.svg?branch=master)](https://travis-ci.org/fast-ide/fast-ide)

💨 The **Fast IDE** you can only dream of ⛅

### Supported OSs

```yaml
# see deploy section
- centos 8
- debian 10
- fedora 31
- ubuntu 19.04

# centos 7
# fedora 30
# ubuntu 18.04
```

```yaml
# see install section
- macos
```

### Run

```Shell
# for example on Ubuntu Disco 🕺
docker run -it fastide/ubuntu:19.04 zsh
```

### Deploy

```Shell
# for example on CentOS 8 💰
docker pull fastide/centos:8
docker create -ti --name fastide fastide/centos:8 bash
docker cp fastide:/home/developer /home/ # docker rm -f fastide
sudo useradd developer && sudo passwd developer
sudo chown -R developer /home/developer
sudo usermod -aG sudo developer # optional
su - developer
zsh
```

### Install

```Shell
git clone --recursive https://github.com/fast-ide/fast-ide
cd fast-ide/bootstrap && make all
cd .. && make install
```

### Font settings

```Shell
# this is required for OS that don't support non-ascii characters
git clone https://github.com/powerline/fonts && cd fonts
./install.sh
# select 'Ubuntu Mono' font in terminal preferences
# also https://apple.stackexchange.com/questions/368603/how-to-make-powerline-fonts-work-with-iterm2
```

### Themes

```yaml
onehalf:
  vim: https://github.com/sonph/onehalf
  terminal: https://github.com/sonph/onehalf

onedark: # alternative
  vim: https://github.com/joshdick/onedark.vim
  terminal: 
  - https://github.com/joshdick/onedark.vim/tree/master/term
  - https://github.com/denysdovhan/one-gnome-terminal
```
