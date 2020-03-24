set -ex

# ----------------------------------------------------------------------------
# Copy configuration files
# ----------------------------------------------------------------------------

cp configs/.ackignore $HOME/
cp configs/.gitconfig $HOME/
cp configs/.tmux.conf $HOME/
cp configs/.zshrc $HOME/

mkdir -p $HOME/.config/nvim/

cp configs/init.vim $HOME/.vimrc
cp configs/snapshot.vim $HOME/.config/nvim/
cp configs/lsp.vim $HOME/.config/nvim/

# zsh -c "source $HOME/.zshrc"
vim -T dumb -S $HOME/.config/nvim/snapshot.vim +qa
