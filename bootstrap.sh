set -e
set -x

# ----------------------------------------------------------------------------
# Install brew
# ----------------------------------------------------------------------------

git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew
mkdir ~/.linuxbrew/bin
ln -s ../Homebrew/bin/brew ~/.linuxbrew/bin
eval $(~/.linuxbrew/bin/brew shellenv)

test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# ----------------------------------------------------------------------------
# Install brew packages
# ----------------------------------------------------------------------------

brew install zsh \
             pyenv \
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

# ----------------------------------------------------------------------------
# Install nodejs
# ----------------------------------------------------------------------------

export NVM_DIR="$HOME/.nvm"
[ -s "$HOME/.linuxbrew/opt/nvm/nvm.sh" ] && . "/$HOME/.linuxbrew/opt/nvm/nvm.sh"

nvm install v8.12.0
nvm use v8.12.0
nvm install-latest-npm

# ----------------------------------------------------------------------------
# Install npm packages
# ----------------------------------------------------------------------------

npm install -g jscpd \
               gitmoji-cli \
               git-recent \
               git-stats \
               diff-so-fancy \
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

curl -L git.io/antigen -o $HOME/.zsh/antigen.zsh --create-dirs

git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ----------------------------------------------------------------------------
# Copy configuration files
# ----------------------------------------------------------------------------

install -m 644 -D configs/.tmux.conf -t $HOME/
install -m 644 -D configs/.zshrc -t $HOME/

install -m 644 -D configs/init.vim -t $HOME/.config/nvim/
install -m 644 -D configs/lsp.vimrc -t $HOME/.config/nvim/config/

install -m 644 -D configs/.ackignore -t $HOME/

# ----------------------------------------------------------------------------
# Create neovim directories
# ----------------------------------------------------------------------------

mkdir -p $HOME/.nvim/backup/
mkdir -p $HOME/.nvim/swap/
mkdir -p $HOME/.nvim/undodir/
mkdir -p $HOME/.nvim/view/

# ----------------------------------------------------------------------------
# Install neovim packages
# ----------------------------------------------------------------------------

nvim +PlugInstall +UpdateRemotePlugins +qall!
