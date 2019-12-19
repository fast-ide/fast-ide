set -e
set -x

# ----------------------------------------------------------------------------
# Install brew packages
# ----------------------------------------------------------------------------

brew install zsh \
             python@2 \
             python@3 \
             pyenv \
             node \
             nvm \
             neovim \
             tmux \
             fpp \
             ag \
             fzf \
             ctags \
             git-extras \
             tig \
             htop \
             catimg \
             grc \
             jid \
             httpie \
             ncdu

brew cleanup

# ----------------------------------------------------------------------------
# Install npm packages
# ----------------------------------------------------------------------------

npm install -g jscpd \
               gitmoji-cli \
               git-recent \
               git-stats \
               diff-so-fancy \
               taskbook \
               vtop

# ----------------------------------------------------------------------------
# Install python packages
# ----------------------------------------------------------------------------

pip2 install pynvim
pip3 install pynvim \
             git-plus

# ----------------------------------------------------------------------------
# Copy configuration files
# ----------------------------------------------------------------------------

cp configs/.ackignore -t $HOME/
cp configs/.gitconfig -t $HOME/
cp configs/.tmux.conf -t $HOME/
cp configs/.zshrc -t $HOME/

mkdir -p $HOME/.config/nvim/

cp configs/init.vim -t $HOME/.config/nvim/
cp configs/lsp.vimrc -t $HOME/.config/nvim/
