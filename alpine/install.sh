apk add --no-cache \
        ack \
        bash \
        cmake \
        curl \
        ctags \
        fzf \
        git \
        go \
        jq \
        linux-headers \
        llvm \
        make \
        ncdu \
        neovim \
        nodejs \
        npm \
        python3 \
        tig \
        tmux \
        tree \
        zsh \
        zsh-vcs

ln -s /usr/bin/python3 /usr/bin/python

apk add python3-dev libc-dev

pip3 install pynvim git-plus python-language-server
GO111MODULE=on go get golang.org/x/tools/gopls@latest
GO111MODULE=on go get github.com/jstemmer/gotags

apk del python3-dev libc-dev

wget https://github.com/gokcehan/lf/releases/download/r14/lf-linux-amd64.tar.gz && \
tar -xf lf-linux-amd64.tar.gz && \
mv lf /usr/bin && \
rm -rf lf-linux-amd64.tar.gz

wget https://github.com/facebook/PathPicker/releases/download/0.8.2/fpp.0.8.2.tar.gz && \
tar -xf fpp.0.8.2.tar.gz && \
mv fpp src /usr/bin/ && \
rm -rf fpp.0.8.2.tar.gz

ln -s /usr/bin/nvim /usr/bin/vim
git clone https://github.com/trapd00r/vimcat
cd vimcat && cp vimcat /usr/bin
cd .. && rm -rf vimcat

npm install -g diff-so-fancy \
               gtop

export SHELL=/bin/zsh

git clone https://github.com/fast-ide/fast-ide
cd fast-ide

cp configs/.ackignore $HOME/
cp configs/.gitconfig $HOME/
cp configs/.tmux.conf $HOME/
cp configs/.zshrc $HOME/

echo "PATH=\$PATH:\$GOPATH/bin" >> ~/.zshrc

mkdir -p $HOME/.config/nvim/

cp configs/init.vim $HOME/.config/nvim/
cp configs/snapshot.vim $HOME/.config/nvim/
cp configs/lsp.vim $HOME/.config/nvim/
cp configs/coc-settings.json $HOME/.config/nvim/

nvim -S $HOME/.config/nvim/snapshot.vim +qa --headless
zsh -c "source $HOME/.zshrc"
cd .. && rm -rf fast-ide