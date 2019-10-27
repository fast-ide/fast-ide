set -e
set -x

# Install brew

git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew
mkdir ~/.linuxbrew/bin
ln -s ../Homebrew/bin/brew ~/.linuxbrew/bin
eval $(~/.linuxbrew/bin/brew shellenv)
~/.linuxbrew/bin/brew shellenv

# Install brew packages

brew install zsh
brew install pyenv
brew install nvm

brew install neovim
brew install tmux

brew install fpp
brew install ag
brew install fzf
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

brew install git-extras
brew install tig

brew install htop
brew install catimg
brew install highlight

brew install grc
brew install jid

brew install httpie
brew install sqlite3


# Install nodejs

export NVM_DIR="$HOME/.nvm"
[ -s "$HOME/.linuxbrew/opt/nvm/nvm.sh" ] && . "/$HOME/.linuxbrew/opt/nvm/nvm.sh" 

nvm install v8.12.0
nvm use v8.12.0
nvm install-latest-npm


# Install npm packages

npm install -g jscpd
npm install -g gitmoji-cli
npm install -g git-recent
npm install -g git-stats
npm install -g diff-so-fancy
npm install -g vtop


# Set git configuration

git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global push.default current
git alias conflicted "nvim +Conflicted"
git alias staged "diff --cached --name-only"


# Install python

ZLIB_ROOT_PATH=$(brew --cellar zlib)/$(brew list --versions zlib | tr ' ' '\n' | tail -1)
ZLIB_INCLUDE_PATH=$ZLIB_ROOT_PATH/include
ZLIB_LIBRARY_PATH=$ZLIB_ROOT_PATH/lib
OPENSSL_INCLUDE_PATH=$(brew --prefix openssl)/include
OPENSSL_LIBRARY_PATH=$(brew --prefix openssl)/lib
SQLITE3_INCLUDE_PATH=$(brew --prefix sqlite3)/include
SQLITE3_LIBRARY_PATH=$(brew --prefix sqlite3)/lib

export CPPFLAGS="-I$ZLIB_INCLUDE_PATH -I$OPENSSL_INCLUDE_PATH -I$SQLITE3_INCLUDE_PATH"
export LDFLAGS="-L$ZLIB_LIBRARY_PATH -L$OPENSSL_LIBRARY_PATH -L$SQLITE3_LIBRARY_PATH"
pyenv install 3.6.5
eval "$(pyenv init -)"
pyenv shell 3.6.5


# Install python packages

pip3 install pynvim
pip2 install pynvim

pip3 install git-plus termdown pygments


# Install zsh packages

curl -L git.io/antigen > $HOME/.zsh/antigen.zsh
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

# Install vim packages

curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim +PlugInstall +UpdateRemotePlugins +qall!


# Copy configuration files

mkdir -p $HOME/.zsh

mkdir -p $HOME/.nvim/backup/
mkdir -p $HOME/.nvim/swap/
mkdir -p $HOME/.nvim/undodir/
mkdir -p $HOME/.nvim/view/
mkdir -p $HOME/.tmux

install -m 644 -D configs/init.vim -t $HOME/.config/nvim/
install -m 644 -D configs/snapshot.vim -t $HOME/.config/nvim/
install -m 644 -D configs/lsp.vimrc -t $HOME/.config/nvim/config/
install -m 644 -D configs/.ackignore -t $HOME/
install -m 644 -D configs/.tmux.conf -t $HOME/
install -m 644 -D configs/.zshrc -t $HOME/
