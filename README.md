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

#### tmux

prefix is **\`** symbol

```
<prefix>|   split the window vertically
<prefix>-   split the window horizontally
<prefix>!   move the pane to a separate window

<prefix>n   next window
<prefix>p   previous window

<prefix>r   source .tmux.conf config file
<prefix>e   switch to fpp mode (see: https://github.com/facebook/PathPicker)

<prefix>Tab clear pane
<prefix>x   close pane

Shift-Left  resize pane left by 5
Shift-Right resize pane right by 5
Shift-Up    resize pane up by 5
Shift-Down  resize pane down by 5

Ctrl-H      go to the left pane
Ctrl-J      go to the bottom pane
Ctrl-K      go to the top pane
Ctrl-L      go to the right pane
```

#### terminal

```
Ctrl-A go to the beginning of the line
Ctrl-E go to the end of the line

Ctrl-N next insturction from history
Ctrl-P previous insturction from history

Alt-C  go to the directory using fuzzy search
Ctrl-R find the insturction using fuzzy search
Ctrl-T find file using fuzzy search

Esc    switch to vi mode
```


#### nvim

`<Leader>` is `Space` symbol

##### normal mode


```
Ctrl-E down 1 line
Ctrl-Y up 1 line

vv     select line
V      select to the end of the line

yy     yank line
Y      yank to the end of the line

mm     move line
M      move to the end of the line

dd     delete line
D      delete to the end of the line

H      go to the beginning of the line (alias for ^)
L      go to the end of the line (alias for $)

zj     down half the window
zk     up half the window
zz     center the window
```

###### config file

```
<Leader>ov  open nvim config file
```

###### file manager

```
<Leader>f   open lf file manager (see: https://github.com/gokcehan/lf)
<Leader>Tab open NerdTree (see: https://github.com/preservim/nerdtree)
```

###### next

```
n          next search
<Leader>wn next window
<Leader>tn next tab
<Leader>qn next item in quickfix list
<Leader>ln next item in location list
<Leader>bn next bookmark (see: https://github.com/MattesGroeger/vim-bookmarks)
```

###### previous

```
p          previous search
<Leader>wp previous window
<Leader>tp previous tab
<Leader>qp previous item in quickfix list
<Leader>lp previous item in location list
<Leader>bp previous bookmark
```

###### edit

```
<Leader>we edit file in new vertical window
<Leader>te edit file in new tab
<Leader>qe open quickfix list
<Leader>le open location list
```

###### open or only

```
<Leader>wo (only) close all other windows
<Leader>lo (only) close all other tabs
<Leader>qo open quickfix list
<Leader>lo open location list
<Leader>bo open bookmark list
```

###### close

```
<Leader>wd (destroy) close window
<Leader>td (destroy) close tab
<Leader>qd (destroy) close quickfix list
<Leader>ld (destroy) close location list
```

###### search

```
s{char}{char}  to move to {char}{char} (see: https://github.com/easymotion/vim-easymotion)

<Leader>fb find buffer (see: https://github.com/junegunn/fzf.vim)
<Leader>ff find file
<Leader>fl find line
<Leader>ft find tag
<Leader>fs find file type
<Leader>fh find find a file among previously opened files

<Leader>sl find line in the current buffer
<Leader>st find tag in the current buffer

\          grep word under cursor (see: https://github.com/mileszs/ack.vim)
```

###### preview

```
;          preview tag (see: https://github.com/skywind3000/vim-preview)
<Leader>pd (destroy) close preview

```

###### resize window

```
Ctrl-T     switch to resize window (see: https://github.com/simeji/winresizer)
<Leader>ww toogle golden ration mode (see: https://github.com/roman/golden-ratio)
```

##### insert mode

```
Ctrl-E (like in **normal** mode)
Ctrl-Y (like in **normal** mode)

jk     switch to normal mode (alias for Esc)
```

##### command mode

```
Ctrl-A (like in **terminal**)
Ctrl-E (like in **terminal**)
Ctrl-N (like in **terminal**)
Ctrl-P (like in **terminal**)
```

##### visual mode

```
Shift-S surround object (see: https://github.com/tpope/vim-surround)
```

##### improved maps

```
/   added winking and centering
?   added winking and centering

>   added support for continuous shifting
<   added support for continuous shifting

b   added support for camel notation
e   added support for camel notation
w   added support for camel notation
```

##### tmux intergation

```
<Leader>vo  open vimux runner (see: https://github.com/benmills/vimux)
<Leader>vp  send selected text to vimux runner
"           send text from the cursor to the end of the line to vimux runner
```
