if [ ! -f "$HOME/.zsh/antigen.zsh" ]; then
  curl -L git.io/antigen -o $HOME/.zsh/antigen.zsh --create-dirs
fi
source $HOME/.zsh/antigen.zsh

CASE_SENSITIVE="true"
ZSH_THEME=""

setopt hist_ignore_all_dups
setopt hist_save_nodups
setopt hist_ignore_space

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
antigen bundle hlissner/zsh-autopair
antigen bundle djui/alias-tips
antigen bundle adolfoabegg/browse-commit
antigen bundle joel-porquet/zsh-dircolors-solarized
antigen bundle unixorn/git-extra-commands
antigen bundle cal2195/q
antigen bundle robertzk/send.zsh
antigen bundle gko/ssh-connect
antigen bundle nviennot/zsh-vim-plugin
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

antigen apply

# TODO: need to check this for multiple os
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^ ' autosuggest-accept
bindkey "^I" menu-expand-or-complete

HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

export EDITOR=nvim

alias o=nvim
alias c=vimcat
alias gs='git status'
alias cdr='cd `git root`'
alias p=echo
alias r=clear

# TODO: need to make this for multiple os
# alias pbcopy='xclip -selection clipboard'
# alias pbpaste='xclip -selection clipboard -o'

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# TODO: need to fix this crutch
if [ ! -f "$HOME/.tmux/line" ]; then
  tmux new-session "nvim -c ':Tmuxline lightline' -c ':TmuxlineSnapshot $HOME/.tmux/line' -c ':qall'"
fi

KEYTIMEOUT=1

# TODO: need to move in specific language directory
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"
