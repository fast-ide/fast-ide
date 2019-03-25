source ~/.zsh/antigen.zsh

CASE_SENSITIVE="true"
ZSH_THEME=""

antigen use oh-my-zsh
antigen bundle git
antigen bundle gitfast
antigen bundle heroku
antigen bundle pip
antigen bundle debian
antigen bundle command-not-found
antigen bundle tmuxinator

antigen bundle zsh-users/zsh-syntax-highlighting
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
antigen bundle supercrabtree/k
antigen bundle cal2195/q
antigen bundle robertzk/send.zsh
antigen bundle gko/ssh-connect
antigen bundle nviennot/zsh-vim-plugin
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

antigen apply

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

export EDITOR=nvim
export PAGER=vimpager

alias o=nvim
alias c=vimcat
alias p=echo
alias r=clear
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ ! -f "$HOME/.tmux/line" ]; then
  tmux new-session "vim -c ':Tmuxline iceberg' -c ':TmuxlineSnapshot $HOME/.tmux/line' -c ':qall'"
fi
# if [ -f "$HOME/theme.sh" ]; then
#   $HOME/theme.sh
#   rm -rf $HOME/theme.sh
# fi
