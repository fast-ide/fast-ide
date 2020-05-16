![ci_dockerfile](https://github.com/fast-ide/fast-ide/workflows/ci_dockerfile/badge.svg?branch=master)
[![Build Status](https://travis-ci.org/fast-ide/fast-ide.svg?branch=master)](https://travis-ci.org/fast-ide/fast-ide)
[![Gitter](https://img.shields.io/badge/chat-gitter-brightgreen.svg)](https://gitter.im/fast-ide/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![Slack](https://img.shields.io/badge/workspace-slack-blue.svg)](https://fastide.slack.com)
![Platform](https://img.shields.io/badge/Platform-MacOS%20|%20Linux%20|%20Windows-blue.svg)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/fast-ide/fast-ide/blob/master/LICENSE)

We will be happy to treat everyone who helps us with coffee ☕, send us a link to your account <br />
on the [ko-fi](https://ko-fi.com) service in [gitter](https://gitter.im/fast-ide/community) and you can put a star ⭐ as a reminder for us

## Introduction

💨 The **Fast IDE** you can only dream of ⛅

> The developer needs three things:
> 1. Email
> 2. GitHub account
> 3. Ability to fast develop anywhere and on anything

For the third thing we created the **Fast IDE**<br/>
We believe that development tools should be available to everyone and therefore **free** of charge ✌️

We've taken tools that have been proven for decades and <br/>
added cool new features and integrated them into a single solution 🌟

<img src="https://raw.githubusercontent.com/fast-ide/fast-ide/master/preview.png"/>

## Table of Contents

- [Introduction](#introduction)
- [Instructions](#instructions)
  * [Run](#run)
  * [Update](#update)
  * [Supported OSs](#supported-oss)
  * [Deploy](#deploy)
  * [Install](#install)
  * [Font settings](#font-settings)
  * [Themes 🎨](#themes-)
  * [True color](#true-color)
  * [Toolbox 🧰](#toolbox-)
  * [Maps](#maps)
    + [tmux](#tmux)
    + [terminal](#terminal)
    + [nvim](#nvim)
      - [normal mode](#normal-mode)
      - [insert mode](#insert-mode)
      - [command mode](#command-mode)
      - [visual mode](#visual-mode)
      - [improved maps](#improved-maps)
      - [tmux integration](#tmux-integration)
      - [linter integration](#linter-integration)
  * [How To](#how-to)
- [Plans 💡](#plans-)
- [Powered by ✨](#powered-by)
- [Contributing 🤝](#contributing-)
- [Sponsorship 👏](#sponsorship-)
- [License](#license)

## Instructions

We want to provide you with tools that will help you reach your full potential 🧑‍🚀<br/>
`tmux` `zsh` `brew` `neovim` `coc.nvim`

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
# for example update on Ubuntu Focal Fossa 🐱
docker run -it fastide/ubuntu:20.04 zsh
git clone https://github.com/fast-ide/fast-ide
cd fast-ide && ./install.sh
```

### Supported OSs

```yaml
# see deploy or run section
- alpine
- centos 8
- debian 10
- fedora 31
- ubuntu 18.04
- ubuntu 20.04
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
cd fast-ide/toolbox && make all
cd .. && make install
```

### Font settings

```
FiraCode: https://github.com/tonsky/FiraCode/wiki/Installing
```

### Themes 🎨

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

### True color

If you are using a terminal that does not support _true color_ perform the following script for normal display
 
```sh
nvim -c "set notermguicolors" -c "Tmuxline airline" -c "TmuxlineSnapshot! ~/.tmux/line" +q 
echo "alias o='nvim -c \"set notermguicolors\"'" >> ~/.zshrc
```

You can check support using the following instruction:
```sh
awk 'BEGIN{
    s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
    for (colnum = 0; colnum<77; colnum++) {
        r = 255-(colnum*255/76);
        g = (colnum*510/76);
        b = (colnum*255/76);
        if (g>255) g = 510-g;
        printf "\033[48;2;%d;%d;%dm", r,g,b;
        printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
        printf "%s\033[0m", substr(s,colnum+1,1);
    }
    printf "\n";
}'
```

### Toolbox 🧰

- [jq](https://stedolan.github.io/jq) and [jid](https://github.com/simeji/jid)
- [git](https://git-scm.com/book/en/v2) and [tig](https://jonas.github.io/tig/doc/manual.html)
- [lf](https://godoc.org/github.com/gokcehan/lf) and [ncdu](https://dev.yorhel.nl/ncdu/man)
- [curl](https://ec.haxx.se) and [httpie](https://httpie.org/docs)
- [wtfutil](https://github.com/wtfutil/wtf) and [gtop](https://github.com/aksakalli/gtop)

We also have [gnupg](https://www.gnupg.org/gph/en/manual.html) inside each docker container from the [list](#supported-oss) <br/>
If you used the [deployment](#deploy) instruction you can install it using your system package manager

### Maps

#### tmux

prefix is **\`** symbol

```
<prefix>|   split the window vertically
<prefix>-   split the window horizontally
<prefix>!   move the pane to a separate window

<prefix>n   next window
<prefix>p   previous window
<prefix>{N} go to the N window (i.e. `3)

<prefix>"   show tree
<prefix>s   create session
<prefix>r   source .tmux.conf config file
<prefix>i   install tmux plugins (https://github.com/tmux-plugins/tpm)
<prefix>e   switch to fpp mode (see: https://github.com/facebook/PathPicker)
<prefix>u   opening urls from browser (see: https://github.com/wfxr/tmux-fzf-url)

<prefix>Tab clear pane
<prefix>x   close pane
<prefix>&   close window

Shift-Left  resize pane left by 5
Shift-Right resize pane right by 5
Shift-Up    resize pane up by 5
Shift-Down  resize pane down by 5

Ctrl-H      go to the left pane
Ctrl-J      go to the bottom pane
Ctrl-K      go to the top pane
Ctrl-L      go to the right pane
```

<img src="https://raw.githubusercontent.com/fast-ide/fast-ide/master/docs/tmux.gif"/>

#### terminal

```
Ctrl-A      go to the beginning of the line
Ctrl-E      go to the end of the line

Ctrl-N      next insturction from history
Ctrl-P      previous insturction from history

Alt-C       go to the directory using fuzzy search
Ctrl-R      find the insturction using fuzzy search
Ctrl-T      find file using fuzzy search

Esc         switch to vi mode
```

```sh
# command aliases
alias c=vimcat
alias o=nvim
alias p=echo
alias r=clear
```

<img src="https://raw.githubusercontent.com/fast-ide/fast-ide/master/docs/zsh.gif"/>

#### nvim

`<Leader>` is `Space` symbol

You can see all settings in the configuration file
```
<Leader>ov  open nvim config file
```

##### normal mode


```
Ctrl-E      down 1 line
Ctrl-Y      up 1 line

vv          select line
V           select to the end of the line

yy          yank line
Y           yank to the end of the line

mm          move line
M           move to the end of the line

dd          delete line
D           delete to the end of the line

H           go to the beginning of the line (alias for ^)
L           go to the end of the line (alias for $)

zj          down half the window
zk          up half the window
zz          center the window
```

###### file manager

```
<Leader>f   open lf file manager (see: https://github.com/gokcehan/lf)
# use the hjkl keys to navigate and press l to open the selected file

<Leader>Tab open NerdTree (see: https://github.com/preservim/nerdtree)
```

###### next

```
n           next search
<Leader>wn  next window
<Leader>tn  next tab
<Leader>qn  next item in quickfix list
<Leader>ln  next item in location list
<Leader>bn  next bookmark (see: https://github.com/MattesGroeger/vim-bookmarks)
```

###### previous

```
N           previous search
<Leader>wp  previous window
<Leader>tp  previous tab
<Leader>qp  previous item in quickfix list
<Leader>lp  previous item in location list
<Leader>bp  previous bookmark
```

###### docs

```
K           run a program to lookup the keyword under the cursor
<Leader>k   display the manpage for the keyword under the cursor horizontally
<Leader>v   display the manpage for the keyword under the cursor vertically
```

###### highlight

```
<Leader>l   highlight a word under the cursor (see: https://github.com/t9md/vim-quickhl)
<Leader>ll  toggle show special symbols
<Leader>ls  toggle search highlight
```

###### edit

```
<Leader>we  edit file in new vertical window
<Leader>te  edit file in new tab
```

###### open or only

```
<Leader>wo  (only) close all other windows
<Leader>to  (only) close all other tabs
<Leader>qo  open quickfix list
<Leader>lo  open location list
<Leader>bo  open bookmark list
```

###### close

```
<Leader>wd  (destroy) close window
<Leader>td  (destroy) close tab
<Leader>qd  (destroy) close quickfix list
<Leader>ld  (destroy) close location list
```

###### search

```
s{char}{char}  to move to {char}{char} (see: https://github.com/easymotion/vim-easymotion)

<Leader>fb  find buffer (see: https://github.com/junegunn/fzf.vim)
<Leader>ff  find file
<Leader>fl  find line
<Leader>ft  find tag
<Leader>fs  find file type
<Leader>fh  find find a file among previously opened files

<Leader>sl  find line in the current buffer
<Leader>st  find tag in the current buffer

\           grep word under cursor (see: https://github.com/mileszs/ack.vim)
```

###### preview tag

```
;           preview tag (see: https://github.com/skywind3000/vim-preview)
<Leader>pd  (destroy) close preview
```

`<Leader>ft` generates the **tags** of the file if it is missing
or you can generate it manually if necessary
```sh
ctags -R --c++-kinds=+p --fields=+iaS --extras=+q --language-force=C++ # C++
ctags -R --fields=+l --languages=python --python-kinds=-iv             # Python
gotags -R ./**/*.go > tags                                             # Go
ctags -R                                                               # JavaScript
```

###### resize window

`Meta` key is `Alt` or `Option`

```
Ctrl-T      switch to resize window (see: https://github.com/simeji/winresizer)
<Leader>ww  toogle golden ration mode (see: https://github.com/roman/golden-ratio)

Meta-Up    increase the vertical size of the current window
Meta-Down  decrease the vertical size of the current window
Meta-Right increase the horizontal size of the current window
Meta-Left  decrease the horizontal size of the current window
```

##### insert mode

```
Ctrl-E      (like in normal mode)
Ctrl-Y      (like in normal mode)

jk          switch to normal mode (alias for Esc)
```

##### command mode

```
Ctrl-A      (like in terminal)
Ctrl-E      (like in terminal)
Ctrl-N      (like in terminal)
Ctrl-P      (like in terminal)
```

##### visual mode

```
Shift-S     surround object (see: https://github.com/tpope/vim-surround)
```

##### improved maps

```
.           added support for visual mode
/           added winking and centering
?           added winking and centering

>           added support for continuous shifting
<           added support for continuous shifting

b           added support for camel notation
e           added support for camel notation
w           added support for camel notation
```

##### tmux integration

```
<Leader>vo  open vimux runner (see: https://github.com/benmills/vimux)
<Leader>vp  send selected text to vimux runner
"           send text from the cursor to the end of the line to vimux runner
```

##### linter integration

All errors which are identified by the linter are in the location list<br/>
You can navigate to them using the keyboard shortcuts:<br/>
`<Leader>lo`, `<Leader>ln`, `<Leader>lp` (see their description above)<br/>
For more information see: https://github.com/dense-analysis/ale

### How To

> how to build a project with Makefile ?
```
:Make
```
> how to build a project with Makefile in background ?
```
:Asyncrun make
```

> how to build a project without Makefile ?
```vim
" cmake prjoect example
:Dispatch cmake --build _build
```
> how to build a project without Makefile in background ?
```vim
" cmake prjoect example
:Asyncrun cmake --build _build
```
> how to run tests for a project ?
```vim
" go project example
:Dispatch ginkgo ./...
```

You can view the output of commands launched using `AsyncRun`<br />
in the quickfix list using keyboard shortcut: `<Leader>qo`<br />
For more information see:
- https://github.com/tpope/vim-dispatch
- https://github.com/skywind3000/asyncrun.vim

## Plans 💡

We want to change the way we think about the development process, <br />
make it fast, convenient, collaborative, and accessible to everyone

One of the key development vectors is providing the ability to easily deploy the environment <br />
and provide access to other users of the Github service to solve issues together <br />
A cool feature is to make it possible directly from the browser with the ability  <br />
to stream the terminal to the corresponding issue page 🎉 <br />

## Powered by ✨

Many thanks to the people and organizations that make this possible:

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://tpo.pe/"><img src="https://avatars0.githubusercontent.com/u/378?v=4" width="100px;" alt=""/><br /><sub><b>Tim Pope</b></sub></a><br /><a href="#plugin-tpope" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://andrewra.dev"><img src="https://avatars3.githubusercontent.com/u/124255?v=4" width="100px;" alt=""/><br /><sub><b>Andrew Radev</b></sub></a><br /><a href="#plugin-AndrewRadev" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://github.com/Chiel92"><img src="https://avatars0.githubusercontent.com/u/1030961?v=4" width="100px;" alt=""/><br /><sub><b>Chiel ten Brinke</b></sub></a><br /><a href="#plugin-Chiel92" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://idagio.com"><img src="https://avatars0.githubusercontent.com/u/187211?v=4" width="100px;" alt=""/><br /><sub><b>Mattes Groeger</b></sub></a><br /><a href="#plugin-MattesGroeger" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://vinarian.blogspot.com/"><img src="https://avatars3.githubusercontent.com/u/41495?v=4" width="100px;" alt=""/><br /><sub><b>Shougo</b></sub></a><br /><a href="#plugin-Shougo" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://github.com/Xuyuanp"><img src="https://avatars0.githubusercontent.com/u/2245664?v=4" width="100px;" alt=""/><br /><sub><b>Xuyuan Pang</b></sub></a><br /><a href="#plugin-Xuyuanp" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://airbladesoftware.com"><img src="https://avatars0.githubusercontent.com/u/7265?v=4" width="100px;" alt=""/><br /><sub><b>Andy Stewart</b></sub></a><br /><a href="#plugin-airblade" title="Plugin/utility libraries">🔌</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://doist.com/"><img src="https://avatars1.githubusercontent.com/u/184462?v=4" width="100px;" alt=""/><br /><sub><b>Amir Salihefendic</b></sub></a><br /><a href="#plugin-amix" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://benmills.org"><img src="https://avatars2.githubusercontent.com/u/55991?v=4" width="100px;" alt=""/><br /><sub><b>Ben Mills</b></sub></a><br /><a href="#plugin-benmills" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://github.com/bkad"><img src="https://avatars0.githubusercontent.com/u/425989?v=4" width="100px;" alt=""/><br /><sub><b>Kevin Le</b></sub></a><br /><a href="#plugin-bkad" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://blog.256bit.org"><img src="https://avatars0.githubusercontent.com/u/244927?v=4" width="100px;" alt=""/><br /><sub><b>Christian Brabandt</b></sub></a><br /><a href="#plugin-chrisbra" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://ctoomey.com"><img src="https://avatars2.githubusercontent.com/u/420113?v=4" width="100px;" alt=""/><br /><sub><b>Chris Toomey</b></sub></a><br /><a href="#plugin-christoomey" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://dhruvasagar.com/"><img src="https://avatars0.githubusercontent.com/u/88258?v=4" width="100px;" alt=""/><br /><sub><b>Dhruva Sagar</b></sub></a><br /><a href="#plugin-dhruvasagar" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://github.com/easymotion"><img src="https://avatars1.githubusercontent.com/u/13000476?v=4" width="100px;" alt=""/><br /><sub><b>easymotion</b></sub></a><br /><a href="#plugin-easymotion" title="Plugin/utility libraries">🔌</a></td>
  </tr>
  <tr>
    <td align="center"><a href="http://evgeni.io"><img src="https://avatars3.githubusercontent.com/u/1532071?v=4" width="100px;" alt=""/><br /><sub><b>Evgeni Kolev</b></sub></a><br /><a href="#plugin-edkolev" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://gregd.org"><img src="https://avatars3.githubusercontent.com/u/857809?v=4" width="100px;" alt=""/><br /><sub><b>Greg Dietsche</b></sub></a><br /><a href="#plugin-farmergreg" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://arslan.io"><img src="https://avatars1.githubusercontent.com/u/438920?v=4" width="100px;" alt=""/><br /><sub><b>Fatih Arslan</b></sub></a><br /><a href="#plugin-fatih" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://rumkin.com/"><img src="https://avatars0.githubusercontent.com/u/428348?v=4" width="100px;" alt=""/><br /><sub><b>Tyler Akins</b></sub></a><br /><a href="#plugin-fidian" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://github.com/godlygeek"><img src="https://avatars3.githubusercontent.com/u/29423?v=4" width="100px;" alt=""/><br /><sub><b>Matt Wozniski</b></sub></a><br /><a href="#plugin-godlygeek" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://www.gregsexton.org"><img src="https://avatars0.githubusercontent.com/u/150883?v=4" width="100px;" alt=""/><br /><sub><b>Greg Sexton</b></sub></a><br /><a href="#plugin-gregsexton" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://medium.com/@haya14busa"><img src="https://avatars0.githubusercontent.com/u/3797062?v=4" width="100px;" alt=""/><br /><sub><b>haya14busa</b></sub></a><br /><a href="#plugin-haya14busa" title="Plugin/utility libraries">🔌</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://honza.ca"><img src="https://avatars3.githubusercontent.com/u/206357?v=4" width="100px;" alt=""/><br /><sub><b>Honza Pokorny</b></sub></a><br /><a href="#plugin-honza" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://github.com/inside"><img src="https://avatars2.githubusercontent.com/u/107884?v=4" width="100px;" alt=""/><br /><sub><b>inside</b></sub></a><br /><a href="#plugin-inside" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://github.com/itchyny"><img src="https://avatars2.githubusercontent.com/u/375258?v=4" width="100px;" alt=""/><br /><sub><b>itchyny</b></sub></a><br /><a href="#plugin-itchyny" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://jeffkreeftmeijer.com"><img src="https://avatars0.githubusercontent.com/u/43621?v=4" width="100px;" alt=""/><br /><sub><b>Jeff Kreeftmeijer</b></sub></a><br /><a href="#plugin-jeffkreeftmeijer" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://www.jiangmiao.org"><img src="https://avatars1.githubusercontent.com/u/80519?v=4" width="100px;" alt=""/><br /><sub><b>Miao Jiang</b></sub></a><br /><a href="#plugin-jiangmiao" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://paypal.me/junegunn"><img src="https://avatars2.githubusercontent.com/u/700826?v=4" width="100px;" alt=""/><br /><sub><b>Junegunn Choi</b></sub></a><br /><a href="#plugin-junegunn" title="Plugin/utility libraries">🔌</a> <a href="#tool-junegunn" title="Tools">🔧</a></td>
    <td align="center"><a href="https://github.com/kshenoy"><img src="https://avatars3.githubusercontent.com/u/1559554?v=4" width="100px;" alt=""/><br /><sub><b>Kartik Shenoy</b></sub></a><br /><a href="#plugin-kshenoy" title="Plugin/utility libraries">🔌</a></td>
  </tr>
  <tr>
    <td align="center"><a href="http://hashnote.net/"><img src="https://avatars0.githubusercontent.com/u/546312?v=4" width="100px;" alt=""/><br /><sub><b>Alisue</b></sub></a><br /><a href="#plugin-lambdalisue" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://machakann.hatenablog.com/"><img src="https://avatars2.githubusercontent.com/u/480049?v=4" width="100px;" alt=""/><br /><sub><b>machakann</b></sub></a><br /><a href="#plugin-machakann" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://github.com/majutsushi"><img src="https://avatars3.githubusercontent.com/u/465527?v=4" width="100px;" alt=""/><br /><sub><b>Jan Larres</b></sub></a><br /><a href="#plugin-majutsushi" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://bloerg.net"><img src="https://avatars3.githubusercontent.com/u/115270?v=4" width="100px;" alt=""/><br /><sub><b>Matthias Vogelgesang</b></sub></a><br /><a href="#plugin-matze" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://twitter.com/_mhinz_"><img src="https://avatars0.githubusercontent.com/u/972014?v=4" width="100px;" alt=""/><br /><sub><b>Marco Hinz</b></sub></a><br /><a href="#plugin-mhinz" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://mileszs.com"><img src="https://avatars0.githubusercontent.com/u/2425?v=4" width="100px;" alt=""/><br /><sub><b>Miles Z. Sterrett</b></sub></a><br /><a href="#plugin-mileszs" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://github.com/nathanaelkane"><img src="https://avatars1.githubusercontent.com/u/84757?v=4" width="100px;" alt=""/><br /><sub><b>Nate Kane</b></sub></a><br /><a href="#plugin-nathanaelkane" title="Plugin/utility libraries">🔌</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/neoclide"><img src="https://avatars1.githubusercontent.com/u/23586922?v=4" width="100px;" alt=""/><br /><sub><b>neoclide</b></sub></a><br /><a href="#plugin-neoclide" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://ntpeters.com"><img src="https://avatars2.githubusercontent.com/u/1189211?v=4" width="100px;" alt=""/><br /><sub><b>Nate Peterson</b></sub></a><br /><a href="#plugin-ntpeters" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://plasticboy.com/"><img src="https://avatars1.githubusercontent.com/u/54499?v=4" width="100px;" alt=""/><br /><sub><b>Ben Williams</b></sub></a><br /><a href="#plugin-plasticboy" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://www.squishythoughts.com"><img src="https://avatars0.githubusercontent.com/u/6490160?v=4" width="100px;" alt=""/><br /><sub><b>Richard Adenling</b></sub></a><br /><a href="#plugin-radenling" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://rhysd.github.io/"><img src="https://avatars3.githubusercontent.com/u/823277?v=4" width="100px;" alt=""/><br /><sub><b>Linda_pp</b></sub></a><br /><a href="#plugin-rhysd" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://blog.roman-gonzalez.ca"><img src="https://avatars3.githubusercontent.com/u/7335?v=4" width="100px;" alt=""/><br /><sub><b>Roman Gonzalez</b></sub></a><br /><a href="#plugin-roman" title="Plugin/utility libraries">🔌</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/scrooloose"><img src="https://avatars1.githubusercontent.com/u/1671?v=4" width="100px;" alt=""/><br /><sub><b>Martin Grenfell</b></sub></a><br /><a href="#plugin-scrooloose" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://twitter.com/simeji"><img src="https://avatars0.githubusercontent.com/u/368024?v=4" width="100px;" alt=""/><br /><sub><b>simeji</b></sub></a><br /><a href="#plugin-simeji" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://stevelosh.com"><img src="https://avatars0.githubusercontent.com/u/58365?v=4" width="100px;" alt=""/><br /><sub><b>Steve Losh</b></sub></a><br /><a href="#plugin-sjl" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://twitter.com/skywind3000"><img src="https://avatars3.githubusercontent.com/u/3035071?v=4" width="100px;" alt=""/><br /><sub><b>Linwei</b></sub></a><br /><a href="#plugin-skywind3000" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://sonpham.me/"><img src="https://avatars2.githubusercontent.com/u/2466660?v=4" width="100px;" alt=""/><br /><sub><b>Son A. Pham</b></sub></a><br /><a href="#plugin-sonph" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://www.stevevermeulen.com"><img src="https://avatars3.githubusercontent.com/u/810762?v=4" width="100px;" alt=""/><br /><sub><b>Steve Vermeulen</b></sub></a><br /><a href="#plugin-svermeulen" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://twitter.com/t9md"><img src="https://avatars3.githubusercontent.com/u/155205?v=4" width="100px;" alt=""/><br /><sub><b>t9md</b></sub></a><br /><a href="#plugin-t9md" title="Plugin/utility libraries">🔌</a></td>
  </tr>
  <tr>
    <td align="center"><a href="http://terry.ma"><img src="https://avatars3.githubusercontent.com/u/567259?v=4" width="100px;" alt=""/><br /><sub><b>Terry Ma</b></sub></a><br /><a href="#plugin-terryma" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://github.com/tmux-plugins"><img src="https://avatars3.githubusercontent.com/u/8289877?v=4" width="100px;" alt=""/><br /><sub><b>tmux-plugins</b></sub></a><br /><a href="#plugin-tmux-plugins" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://tommcdo.com"><img src="https://avatars2.githubusercontent.com/u/1991483?v=4" width="100px;" alt=""/><br /><sub><b>Tom McDonald</b></sub></a><br /><a href="#plugin-tommcdo" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://github.com/vim-airline"><img src="https://avatars2.githubusercontent.com/u/16690788?v=4" width="100px;" alt=""/><br /><sub><b>vim-airline</b></sub></a><br /><a href="#plugin-vim-airline" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://voldikss.github.io"><img src="https://avatars1.githubusercontent.com/u/20282795?v=4" width="100px;" alt=""/><br /><sub><b>最上川</b></sub></a><br /><a href="#plugin-voldikss" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://vimwiki.github.io/"><img src="https://avatars1.githubusercontent.com/u/2800895?v=4" width="100px;" alt=""/><br /><sub><b>Vimwiki</b></sub></a><br /><a href="#plugin-vimwiki" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://w0rp.com"><img src="https://avatars2.githubusercontent.com/u/3518142?v=4" width="100px;" alt=""/><br /><sub><b>w0rp</b></sub></a><br /><a href="#plugin-w0rp" title="Plugin/utility libraries">🔌</a></td>
  </tr>
  <tr>
    <td align="center"><a href="http://www.adjust.com"><img src="https://avatars1.githubusercontent.com/u/474504?v=4" width="100px;" alt=""/><br /><sub><b>Christian Wellenbrock</b></sub></a><br /><a href="#plugin-wellle" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://github.com/wesQ3"><img src="https://avatars2.githubusercontent.com/u/438799?v=4" width="100px;" alt=""/><br /><sub><b>Wes Malone</b></sub></a><br /><a href="#plugin-wesQ3" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://wlee.net"><img src="https://avatars0.githubusercontent.com/u/1441568?v=4" width="100px;" alt=""/><br /><sub><b>Will Lee</b></sub></a><br /><a href="#plugin-will133" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://www.arashrouhani.com"><img src="https://avatars1.githubusercontent.com/u/294349?v=4" width="100px;" alt=""/><br /><sub><b>Arash Rouhani</b></sub></a><br /><a href="#plugin-Tarrasch" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://www.adolfoabegg.com"><img src="https://avatars0.githubusercontent.com/u/96985?v=4" width="100px;" alt=""/><br /><sub><b>Adolfo Abegg</b></sub></a><br /><a href="#plugin-adolfoabegg" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://www.elsiecarlisle.com"><img src="https://avatars1.githubusercontent.com/u/7599319?v=4" width="100px;" alt=""/><br /><sub><b>Alexandros Kozák</b></sub></a><br /><a href="#plugin-agkozak" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://github.com/cal2195"><img src="https://avatars1.githubusercontent.com/u/9119112?v=4" width="100px;" alt=""/><br /><sub><b>Cal Martin</b></sub></a><br /><a href="#plugin-cal2195" title="Plugin/utility libraries">🔌</a></td>
  </tr>
  <tr>
    <td align="center"><a href="http://www.denysdovhan.com"><img src="https://avatars1.githubusercontent.com/u/3459374?v=4" width="100px;" alt=""/><br /><sub><b>Denys Dovhan</b></sub></a><br /><a href="#plugin-denysdovhan" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://djui.io"><img src="https://avatars3.githubusercontent.com/u/99752?v=4" width="100px;" alt=""/><br /><sub><b>Uwe Dauernheim</b></sub></a><br /><a href="#plugin-djui" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://dev.to/konstantin"><img src="https://avatars1.githubusercontent.com/u/1726487?v=4" width="100px;" alt=""/><br /><sub><b>Konstantin</b></sub></a><br /><a href="#plugin-gko" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://hschne.at"><img src="https://avatars3.githubusercontent.com/u/5294464?v=4" width="100px;" alt=""/><br /><sub><b>Hans-Jörg Schnedlitz</b></sub></a><br /><a href="#plugin-hschne" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://joel.porquet.org"><img src="https://avatars3.githubusercontent.com/u/7941818?v=4" width="100px;" alt=""/><br /><sub><b>Joël Porquet</b></sub></a><br /><a href="#plugin-joel-porquet" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://github.com/leophys"><img src="https://avatars0.githubusercontent.com/u/382161?v=4" width="100px;" alt=""/><br /><sub><b>Blallo</b></sub></a><br /><a href="#plugin-leophys" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://mollifier.hatenablog.com/"><img src="https://avatars0.githubusercontent.com/u/76955?v=4" width="100px;" alt=""/><br /><sub><b>Hideaki Miyake</b></sub></a><br /><a href="#plugin-mollifier" title="Plugin/utility libraries">🔌</a></td>
  </tr>
  <tr>
    <td align="center"><a href="http://velvetpulse.com"><img src="https://avatars1.githubusercontent.com/u/297060?v=4" width="100px;" alt=""/><br /><sub><b>Nicolas Viennot</b></sub></a><br /><a href="#plugin-nviennot" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://robertzk.com"><img src="https://avatars3.githubusercontent.com/u/1638492?v=4" width="100px;" alt=""/><br /><sub><b>Robert Krzyzanowski</b></sub></a><br /><a href="#plugin-robertzk" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://unixorn.github.io"><img src="https://avatars3.githubusercontent.com/u/23920?v=4" width="100px;" alt=""/><br /><sub><b>Joe Block</b></sub></a><br /><a href="#plugin-unixorn" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="http://zdharma.org"><img src="https://avatars2.githubusercontent.com/u/26310601?v=4" width="100px;" alt=""/><br /><sub><b>Zdharma Initiative</b></sub></a><br /><a href="#plugin-zdharma" title="Plugin/utility libraries">🔌</a></td>
    <td align="center"><a href="https://ohmyz.sh"><img src="https://avatars1.githubusercontent.com/u/22552083?v=4" width="100px;" alt=""/><br /><sub><b>Oh My Zsh</b></sub></a><br /><a href="#plugin-ohmyzsh" title="Plugin/utility libraries">🔌</a></td>
     <td align="center"><a href="https://github.com/gokcehan"><img src="https://avatars0.githubusercontent.com/u/1835672?v=4" width="100px;" alt=""/><br /><sub><b>gokcehan</b></sub></a><br /><a href="#tool-gokcehan" title="Tools">🔧</a></td>
    <td align="center"><a href="http://japh.se"><img src="https://avatars2.githubusercontent.com/u/43331?v=4" width="100px;" alt=""/><br /><sub><b>magnus woldrich</b></sub></a><br /><a href="#tool-trapd00r" title="Tools">🔧</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://opensource.fb.com"><img src="https://avatars3.githubusercontent.com/u/69631?v=4" width="100px;" alt=""/><br /><sub><b>Facebook</b></sub></a><br /><a href="#tool-facebook" title="Tools">🔧</a></td>
    <td align="center"><a href="https://neovim.io"><img src="https://avatars3.githubusercontent.com/u/6471485?v=4" width="100px;" alt=""/><br /><sub><b>Neovim</b></sub></a><br /><a href="#infra-neovim" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a></td>
<td align="center"><a href="http://www.zsh.org"><img src="https://avatars2.githubusercontent.com/u/567410?v=4" width="100px;" alt=""/><br /><sub><b>zsh-users</b></sub></a><br /><a href="#tool-zsh-users" title="Tools"></a> <a href="#infra-zsh-users" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a></td>
    <td align="center"><a href="https://brew.sh"><img src="https://avatars2.githubusercontent.com/u/1503512?v=4" width="100px;" alt=""/><br /><sub><b>Homebrew</b></sub></a><br /><a href="#infra-Homebrew" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a></td>
    <td align="center"><a href="https://www.docker.com"><img src="https://avatars1.githubusercontent.com/u/5429470?v=4" width="100px;" alt=""/><br /><sub><b>Docker</b></sub></a><br /><a href="#infra-docker" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a></td>
    <td align="center"><a href="https://github.com/about"><img src="https://avatars1.githubusercontent.com/u/9919?v=4" width="100px;" alt=""/><br /><sub><b>GitHub</b></sub></a><br /><a href="#infra-github" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a></td>
    <td align="center"><a href="https://allcontributors.org"><img src="https://avatars1.githubusercontent.com/u/46410174?v=4" width="100px;" alt=""/><br /><sub><b>All Contributors</b></sub></a><br /><a href="https://github.com/fast-ide/fast-ide/commits?author=all-contributors" title="Documentation">📖</a></td>
  </tr>
</table>

## Contributing 🤝

- You can describe a cool feature by creating an issue with a description and the `feature` label <br />
- See the issue list, we have a `help wanted` label for those tasks that you can help solve<br />
- You can assign the problem to yourself, specify the milestone, and prepare a PR<br />
- We have a `question` label for issues where we want to hear your opinion<br />

## Sponsorship 👏

We are grateful to the maintainers of the following projects for their great work. We are redirecting all revenue to them:

<a href="https://www.patreon.com/gnachman"><img src="https://img.shields.io/badge/patreon-iterm-orange.svg" /></a>
<a href="https://liberapay.com/tmux"><img src="https://img.shields.io/badge/liberapay-tmux-orange.svg" /></a>
<a href="https://www.patreon.com/tonsky"><img src="https://img.shields.io/badge/patreon-firacode-orange.svg" /></a>
<a href="https://www.patreon.com/homebrew"><img src="https://img.shields.io/badge/patreon-homebrew-orange.svg" /></a>
<a href="https://www.patreon.com/wtfutil"><img src="https://img.shields.io/badge/patreon-wtfutil-orange.svg" /></a>
<a href="https://salt.bountysource.com/teams/neovim"><img src="https://img.shields.io/badge/bountysource-neovim-orange.svg" /></a>
<a href="https://www.patreon.com/chemzqm"><img src="https://img.shields.io/badge/patreon-cocnvim-orange.svg" /></a>
<a href="https://github.com/sponsors/tpope"><img src="https://img.shields.io/badge/sponsors-tpope-orange.svg" /></a>
<a href="https://www.patreon.com/umputun"><img src="https://img.shields.io/badge/patreon-radio_t-orange.svg" /></a>

## License

MIT
