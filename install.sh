set -ex

# ----------------------------------------------------------------------------
# Copy configuration files
# ----------------------------------------------------------------------------

cp configs/.ackignore $HOME/
cp configs/.gitconfig $HOME/
cp configs/.tmux.conf $HOME/
cp configs/.zshrc $HOME/

mkdir -p $HOME/.config/nvim/

cp configs/init.vim $HOME/.config/nvim/
cp configs/snapshot.vim $HOME/.config/nvim/
cp configs/lsp.vim $HOME/.config/nvim/

tmux start-server && tmux new-session -d && sleep 30
~/.tmux/plugins/tpm/scripts/install_plugins.sh
tmux kill-server

zsh -c "source $HOME/.zshrc"
nvim -S $HOME/.config/nvim/snapshot.vim +qa --headless

# will be fixed in https://github.com/fast-ide/fast-ide/issues/55
# nvim -c "CocInstall coc-clangd coc-python coc-go" +qa --headless
