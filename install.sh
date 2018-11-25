set -e

#sudo apt-add-repository -y "ppa:ubuntu-toolchain-r/test" && sudo apt update
#sudo add-apt-repository -y ppa:neovim-ppa/stable && apt update

sudo apt install -y wget gconf2

wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -

sudo apt-add-repository "deb http://apt.llvm.org/$(lsb_release -sc)/ llvm-toolchain-$(lsb_release -sc)-7 main"
sudo apt install -y libcurl4-openssl-dev curl \
     g++-7 lcov gcovr cmake cmake-data clang-7

sudo apt -y install curl git git-extras zsh astyle python3-dev \
     neovim silversearcher-ag python-pip \
     tmux exuberant-ctags valgrind gdb

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
     libreadline-dev libsqlite3-dev wget curl libncurses5-dev libncursesw5-dev \
     xz-utils tk-dev libffi-dev liblzma-dev

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install v8.12.0
nvm use v8.12.0
nvm install-latest-npm

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | zsh
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

PYTHON_CONFIGURE_OPTS='--enable-shared' pyenv install --skip-existing 3.5.3
pyenv shell 3.5.3

pip3 install cpplint && npm install -g jscpd

git clone git://github.com/rkitover/vimpager
cd vimpager && sudo make install && cd .. && rm -rf vimpager

pip3 install komodo-python3-dbgp pynvim
pip2 install pynvim

rm -rf $HOME/.oh-my-zsh
curl -L http://install.ohmyz.sh | sh || true

if [ ! -d "/usr/local/PathPicker" ]; then
  sudo git clone https://github.com/facebook/PathPicker.git /usr/local/PathPicker
  sudo ln -s /usr/local/PathPicker/fpp /usr/local/bin/fpp
fi

mkdir -p $HOME/.zsh
curl -L git.io/antigen > $HOME/.zsh/antigen.zsh
curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.nvim/backup
mkdir -p $HOME/.nvim/swap
cp init.vim $HOME/.config/nvim/
cp .tmux.conf $HOME/
cp .zshrc $HOME/
cat >> $HOME/.zshrc <<EOF

export PATH="\$HOME/.pyenv/bin:\$PATH"
eval "\$(pyenv init -)"
eval "\$(pyenv virtualenv-init -)"
EOF

nvim +PlugInstall +qall

if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi
if [ ! -d "$HOME/.zsh/vimman" ]; then
  git clone https://github.com/yonchu/vimman.git $HOME/.zsh/vimman
fi
zsh --rcs $HOME/.zshrc || true

uuids=$(gsettings get org.gnome.Terminal.ProfilesList list | \
  tr -d \' | tr -d \[ | tr -d \] | tr -d , | sed "s/\ /\n/g")
uuid = $(echo $uuids | head -n 1)
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./install.sh --scheme dark --skip-dircolors --profile $uuid
cd .. && rm -rf gnome-terminal-colors-solarized
./one-dark.sh

sudo apt install -y docker.io
sudo chsh -s /bin/zsh $USER
sudo usermod -aG docker $USER
