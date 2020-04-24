set -ex

# ----------------------------------------------------------------------------
# Copy configuration files
# ----------------------------------------------------------------------------

# temp solution: need to transfer in bootstrap after openssl fix
# GO111MODULE=on go get golang.org/x/tools/gopls@latest
# pip3 install python-language-server

cp configs/.ackignore $HOME/
cp configs/.gitconfig $HOME/
cp configs/.tmux.conf $HOME/
cp configs/.zshrc $HOME/

echo "PATH=\$PATH:\$HOME/go/bin" >> ~/.zshrc # need to remove crutch

mkdir -p $HOME/.config/nvim/

cp configs/init.vim $HOME/.config/nvim/
cp configs/snapshot.vim $HOME/.config/nvim/
cp configs/lsp.vim $HOME/.config/nvim/
# cp configs/coc-settings.json $HOME/.config/nvim/

zsh -c "source $HOME/.zshrc"
nvim -S $HOME/.config/nvim/snapshot.vim +qa --headless
