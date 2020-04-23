set -ex

# ----------------------------------------------------------------------------
# Copy configuration files
# ----------------------------------------------------------------------------

# temp solution: need to transfer in bootstrap after openssl fix
brew install --build-bottle lf tree
GO111MODULE=on go get golang.org/x/tools/gopls@latest
GO111MODULE=on go get github.com/jstemmer/gotags
pip3 install python-language-server

cp configs/.ackignore $HOME/
cp configs/.gitconfig $HOME/
cp configs/.tmux.conf $HOME/
cp configs/.zshrc $HOME/

mkdir -p $HOME/.config/nvim/

cp configs/init.vim $HOME/.config/nvim/
cp configs/snapshot.vim $HOME/.config/nvim/
cp configs/lsp.vim $HOME/.config/nvim/
cp configs/coc-settings.json $HOME/.config/nvim/

zsh -c "source $HOME/.zshrc"
nvim -S $HOME/.config/nvim/snapshot.vim +qa --headless
