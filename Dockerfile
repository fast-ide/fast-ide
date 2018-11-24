FROM rusdevops/bootstrap-cpp

RUN add-apt-repository -y ppa:neovim-ppa/stable && apt update
RUN apt -y install curl git git-extras zsh astyle python3-dev \
    neovim silversearcher-ag python3-pip python-pip \
    tmux exuberant-ctags valgrind gdb && \
    rm -rf /var/lib/apt/lists/*

RUN git clone git://github.com/rkitover/vimpager && \
    cd vimpager && make install && cd .. rm -rf vimpager

RUN pip3 install komodo-python3-dbgp pynvim && pip2 install pynvim

ENV TERM xterm-256color

RUN curl -L http://install.ohmyz.sh | sh || true

COPY .zshrc /tmp/
COPY .tmux.conf /tmp/
COPY init.vim /tmp/

RUN useradd -m developer
RUN chown developer /tmp/.tmux.conf
RUN chown developer /tmp/.zshrc
RUN chown developer /tmp/init.vim

RUN git clone https://github.com/facebook/PathPicker.git /usr/local/PathPicker && \
    ln -s /usr/local/PathPicker/fpp /usr/local/bin/fpp

USER developer

RUN mkdir $HOME/.zsh
RUN curl -L git.io/antigen > $HOME/.zsh/antigen.zsh
RUN curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN mv /tmp/.zshrc $HOME/
RUN mkdir -p $HOME/.config/nvim
RUN mv /tmp/init.vim $HOME/.config/nvim/
RUN mv /tmp/.tmux.conf $HOME/

RUN mkdir -p $HOME/.nvim/backup
RUN mkdir -p $HOME/.nvim/swap
RUN nvim +PlugInstall +qall

RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
RUN zsh --rcs $HOME/.zshrc || true

ENV SHELL /usr/bin/zsh

ENTRYPOINT zsh
