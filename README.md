[![Build Status](https://travis-ci.org/rusdevops/fast-ide.svg?branch=master)](https://travis-ci.org/rusdevops/fast-ide)

💨 The **Fast IDE** you can only dream of ⛅

### Supported OSs

```yaml
# see deploy section
- centos 7
- centos 8
- debian 10
- fedora 30
- fedora 31
- ubuntu 18.04
- ubunut 19.04
```

```yaml
# see install section
- macos
```

### Run

```Shell
docker pull fastide/ubuntu:19.04
docker run -it fastide/ubuntu:19.04 zsh -c "nvim +PlugInstall +qa && zsh"
```

### Deploy

```Shell
# for example on Ubuntu Disco 🕺
docker pull fastide/ubuntu:19.04
docker create -ti --name fastide fastide/ubuntu:19.04 bash
docker cp fastide:/home/developer /home/ # docker rm -f fastide
sudo useradd developer && sudo passwd developer
sudo chown -R developer /home/developer
su - developer
zsh -c "nvim +PlugInstall +qa && zsh"
```

### Install

```Shell
git clone --recursive https://github.com/fast-ide/fast-ide
cd /fast-ide/bootstrap && make all
cd .. && make install
zsh -c "nvim +PlugInstall +qa"
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
onehalf: # default
  vim: https://github.com/sonph/onehalf
  terminal: https://github.com/sonph/onehalf

onedark:
  vim: https://github.com/joshdick/onedark.vim
  terminal: https://github.com/joshdick/onedark.vim/tree/master/term
```
