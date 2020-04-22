![ci_dockerfile](https://github.com/fast-ide/fast-ide/workflows/ci_dockerfile/badge.svg?branch=master)
[![Build Status](https://travis-ci.org/fast-ide/fast-ide.svg?branch=master)](https://travis-ci.org/fast-ide/fast-ide)

💨 The **Fast IDE** you can only dream of ⛅

> The developer needs three things:
> 1. Email
> 2. GitHub account
> 3. Ability to fast develop anywhere and on anything

For the third thing we created the **Fast IDE**.

<img src="https://raw.githubusercontent.com/fast-ide/fast-ide/master/preview.png" width="640"/>

Available out of the box now:

- [x] C++ 20 (`cmake`)
- [x] Python 3 (`pip`)
- [x] Golang 1.14 (`go`)
- [x] Node.js 12.15 (`npm`)

### Run

```sh
docker run -it fastide/alpine zsh
```

### Update

```sh
# for example update on Ubuntu 🕺
docker run -it fastide/ubuntu:19.04 zsh
git clone https://github.com/fast-ide/fast-ide
cd fast-ide && ./install.sh
```

### Supported OSs

```yaml
# see deploy section
- centos 8
- debian 10
- fedora 31
- ubuntu 19.04
```

```yaml
# see install section
- macos
```

### Deploy

```sh
# for example deploy Fast IDE on your CentOS 8 🐧
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

```sh
git clone --recursive https://github.com/fast-ide/fast-ide
cd fast-ide/bootstrap && make all
cd .. && make install
```

### Font settings

```
FiraCode: https://github.com/tonsky/FiraCode/wiki/Installing
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

### Maps

#### terminal

```
Ctrl-A go to the beginning of the line</br>
Ctrl-E go to the end of the line</br>

Ctrl-N next insturction from history</br>
Ctrl-P previous insturction from history</br>

Alt-C  go to the directory using fuzzy search</br>
Ctrl-R find the insturction using fuzzy search</br>
Ctrl-T find file using fuzzy search</br>

Esc    switch to vi mode
```


#### nvim

`<Leader>` is `Space` symbol

##### normal mode


```
Ctrl-E down 1 line</br>
Ctrl-Y up 1 line</br>

vv     select line</br>
V      select to the end of the line</br>

yy     yank line</br>
Y      yank to the end of the line</br>

mm     move line</br>
M      move to the end of the line</br>

dd     delete line</br>
D      delete to the end of the line</br>

H      go to the beginning of the line (alias for ^)</br>
L      go to the end of the line (alias for $)</br>

zj     down half the window</br>
zk     up half the window</br>
```


###### file manager

```
<Leader>f open file manager</br>
```

###### next

```
n          next search</br>
<Leader>wn next window</br>
<Leader>tn next tab</br>
<Leader>qn next item in quickfix list</br>
<Leader>ln next item in location list</br>
<Leader>bn next bookmark</br>
```

###### previous

```
p          previous search</br>
<Leader>wp previous window</br>
<Leader>tp previous tab</br>
<Leader>qp previous item in quickfix list</br>
<Leader>lp previous item in location list</br>
<Leader>bp previous bookmark</br>
```

###### edit

```
<Leader>we edit file in new vertical window</br>
<Leader>te edit file in new tab</br>
<Leader>qe open quickfix list</br>
<Leader>le open location list</br>
```

###### open or only

```
<Leader>wo (only) close all other windows</br>
<Leader>lo (only) close all other tabs</br>
<Leader>qo open quickfix list</br>
<Leader>lo open location list</br>

###### close

<Leader>wd (destroy) close window</br>
<Leader>td (destroy) close tab</br>
<Leader>qd (destroy) close quickfix list</br>
<Leader>ld (destroy) close location list</br>
```

###### search

```
s{char}{char}  to move to {char}{char}</br>

<Leader>fb find buffer</br>
<Leader>ff find file</br>
<Leader>fl find line</br>
<Leader>ft find tag</br>
<Leader>fs find file type</br>
<Leader>fh find find a file among previously opened files</br>

<Leader>sl find line in the current buffer</br>
<Leader>st find tag in the current buffer</br>

\          grep word under cursor</br>
```

##### insert mode

```
Ctrl-E (like in **normal** mode)</br>
Ctrl-Y (like in **normal** mode)</br>

jk     switch to normal mode (alias for Esc)</br>
```

##### command mode

```
Ctrl-A (like in **terminal**)</br>
Ctrl-E (like in **terminal**)</br>
Ctrl-N (like in **terminal**)</br>
Ctrl-P (like in **terminal**)</br>
```

##### improved maps

```
/   added winking and centering</br>
?   added winking and centering</br>

>   added support for continuous shifting</br>
<   added support for continuous shifting</br>

b   added support for camel notation</br>
e   added support for camel notation</br>
w   added support for camel notation
```
