set -e
set -x

# ----------------------------------------------------------------------------
# Install brew packages
# ----------------------------------------------------------------------------

brew install zsh \
             python \
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
             highlight \
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
# Set git configuration
# ----------------------------------------------------------------------------

git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global push.default current

git alias conflicted "nvim +Conflicted"
git alias staged "diff --cached --name-only"

# ----------------------------------------------------------------------------
# Install python packages
# ----------------------------------------------------------------------------

pip2 install pynvim
pip3 install pynvim \
             git-plus

# ----------------------------------------------------------------------------
# Install package managers
# ----------------------------------------------------------------------------

git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

# ----------------------------------------------------------------------------
# Copy configuration files
# ----------------------------------------------------------------------------

install -m 644 -D configs/.tmux.conf -t $HOME/
install -m 644 -D configs/.zshrc -t $HOME/

install -m 644 -D configs/init.vim -t $HOME/.config/nvim/
install -m 644 -D configs/lsp.vimrc -t $HOME/.config/nvim/config/

install -m 644 -D configs/.ackignore -t $HOME/
