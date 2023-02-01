if [ ! -f "$HOME/.antigen.zsh" ]; then
  curl -L git.io/antigen > $HOME/.antigen.zsh
fi
source $HOME/.antigen.zsh

CASE_SENSITIVE="true"
ZSH_THEME=""

setopt hist_ignore_all_dups
setopt hist_save_nodups
setopt hist_ignore_space
setopt share_history

antigen use oh-my-zsh
antigen bundle git
antigen bundle gitfast
antigen bundle heroku
antigen bundle pip
antigen bundle debian
antigen bundle command-not-found
antigen bundle tmuxinator
antigen bundle vi-mode

antigen bundle agkozak/zsh-z
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle hschne/fzf-git
antigen bundle leophys/zsh-plugin-fzf-finder
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle mollifier/cd-gitroot
antigen bundle Tarrasch/zsh-bd
antigen bundle djui/alias-tips
antigen bundle adolfoabegg/browse-commit
antigen bundle joel-porquet/zsh-dircolors-solarized
antigen bundle unixorn/git-extra-commands
antigen bundle cal2195/q
antigen bundle robertzk/send.zsh
antigen bundle gko/ssh-connect
antigen bundle nviennot/zsh-vim-plugin
# antigen bundle wfxr/forgit TODO: will be fixed in #105
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

antigen apply

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080,bg=gray,underline"

ssh() {
    tmux rename-window "$*"
    command ssh "$@"
}

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^ ' autosuggest-accept
bindkey '^I' menu-expand-or-complete
bindkey '^S' delete-word
bindkey '^Q' beginning-of-line
bindkey -M vicmd r edit-command-line

HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
SPACESHIP_GIT_BRANCH_PREFIX=""
KEYTIMEOUT=1

export SHELL=`which zsh`
export EDITOR=nvim
export LC_ALL=en_US.UTF-8
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/go/bin

alias o=nvim
alias c=vimcat
alias gs='git status'
alias cdr='cd `git root`'
alias p=echo
alias r=clear
alias less='less -S'

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_OPTS="--layout=reverse --inline-info"
export FORGIT_FZF_DEFAULT_OPTS="
--exact
--border
--cycle
--reverse
--no-mouse
--height '80%'
"
export WORDCHARS=''

fzf-history-widget-accept() {
  [[ -z $BUFFER ]] && fc -R $HISTFILE
  fzf-history-widget
  zle accept-line
}
zle     -N     fzf-history-widget-accept
bindkey '^R' fzf-history-widget-accept

eval "$(pyenv init -)"
