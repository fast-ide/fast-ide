set -ex

# ----------------------------------------------------------------------------
# Copy configuration files
# ----------------------------------------------------------------------------

cp configs/.ackignore $HOME/
cp configs/.gitconfig $HOME/
cp configs/.tmux.conf $HOME/
cp configs/.zshrc $HOME/

mkdir -p $HOME/.config/nvim/
mkdir -p $HOME/.config/lf/

cp configs/init.vim $HOME/.config/nvim/
cp configs/snapshot.vim $HOME/.config/nvim/
cp configs/lsp.vim $HOME/.config/nvim/
cp configs/lfrc $HOME/.config/lf/lfrc

tmux start-server && tmux new-session -d && sleep 30
~/.tmux/plugins/tpm/scripts/install_plugins.sh
tmux kill-server || echo "already killed"

zsh -c "source $HOME/.zshrc" || echo "warning: one of antigen packages is worth fixing"
nvim -S $HOME/.config/nvim/snapshot.vim +qa --headless

# nvim -c "CocInstall coc-clangd coc-python coc-go coc-tsserver" +qa --headless
