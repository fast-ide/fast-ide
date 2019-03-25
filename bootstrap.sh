set -e
set -x

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install v8.12.0
nvm use v8.12.0
nvm install-latest-npm
npm install -g jscpd
npm install -g gitmoji-cli
npm install -g git-recent
npm install -g git-stats

npm install -g diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global push.default current

git alias conflicted "!nvim +Conflicted"
git alias staged "diff --cached --name-only"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | zsh
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

PYTHON_CONFIGURE_OPTS='--enable-shared' pyenv install --skip-existing 3.5.3
pyenv shell 3.5.3

pip3 install cpplint git-plus
pip3 install komodo-python3-dbgp pynvim pygments
pip2 install pynvim 
# export CHEAT_PATH=$HOME/.config/cheat
# pip3 install cheat cheat-ext

rm -rf $HOME/.oh-my-zsh
curl -L http://install.ohmyz.sh | sh || true
mkdir -p $HOME/.zsh
curl -L git.io/antigen > $HOME/.zsh/antigen.zsh
curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [ ! -d "$HOME/.zsh/vimman" ]; then
  git clone https://github.com/yonchu/vimman.git $HOME/.zsh/vimman
fi

mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/vifm
mkdir -p $HOME/.nvim/backup
mkdir -p $HOME/.nvim/swap
mkdir -p $HOME/.tmux

cp configs/init.vim $HOME/.config/nvim/
cp configs/snapshot.vim $HOME/.config/nvim/
cp configs/vifmrc $HOME/.config/vifm/
cp configs/.ackignore $HOME/.config/
cp configs/.tmux.conf $HOME/
cp configs/.zshrc $HOME/

git clone https://github.com/sonph/onehalf
chmod +x onehalf/gnome-terminal/onehalfdark.sh
./onehalf/gnome-terminal/onehalfdark.sh
rm -rf onehalf

cat >> $HOME/.zshrc <<EOF

export PATH="\$HOME/.pyenv/bin:\$PATH"
eval "\$(pyenv init -)"
eval "\$(pyenv virtualenv-init -)"
EOF

mkdir -p $HOME/.config/systemd/user
cat > $HOME/.config/systemd/user/rdm.socket <<EOF
[Unit]
Description=RTags daemon socket
[Socket]
ListenStream=%t/rdm.socket
[Install]
WantedBy=default.target
EOF

cat > $HOME/.config/systemd/user/rdm.service <<EOF
[Unit]
Description=RTags daemon
Requires=rdm.socket
[Service]
Type=simple
ExecStart=`which rdm` -v --inactivity-timeout 300 --log-flush
ExecStartPost=/bin/sh -c "echo +19 > /proc/\$MAINPID/autogroup"
Nice=19
CPUSchedulingPolicy=idle
EOF
systemctl --user enable rdm.socket
systemctl --user start rdm.socket

nvim +PlugInstall +UpdateRemotePlugins +qall!
#nvim -S $HOME/.config/nvim/snapshot.vim

if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi

rm -rf ~/.config/vifm/colors
git clone https://github.com/vifm/vifm-colors ~/.config/vifm/colors

zsh --rcs $HOME/.zshrc || true
