set -ex

# ----------------------------------------------------------------------------
# Copy configuration files
# ----------------------------------------------------------------------------

cp configs/.ackignore -t $HOME/
cp configs/.gitconfig -t $HOME/
cp configs/.tmux.conf -t $HOME/
cp configs/.zshrc -t $HOME/

mkdir -p $HOME/.config/nvim/

cp configs/init.vim -t $HOME/.config/nvim/
cp configs/lsp.vim -t $HOME/.config/nvim/

# zsh -c "nvim +PlugInstall +qa"
