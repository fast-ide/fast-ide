FROM rusdevops/bootstrap:cpp

RUN apt update
RUN apt -y install git zsh vim python-dev tmux exuberant-ctags && \
    rm -rf /var/lib/apt/lists/*

ENV TERM xterm-256color

RUN curl -L http://install.ohmyz.sh | sh || true

COPY .zshrc /tmp/
COPY .vimrc /tmp/
COPY .tmux.conf /tmp/

RUN useradd -m developer
RUN chown developer /tmp/.zshrc
RUN chown developer /tmp/.vimrc
RUN chown developer /tmp/.tmux.conf

USER developer

RUN mkdir $HOME/.zsh
RUN curl -L git.io/antigen > $HOME/.zsh/antigen.zsh
RUN curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN mv /tmp/.zshrc $HOME/
RUN mv /tmp/.vimrc $HOME/
RUN mv /tmp/.tmux.conf $HOME/

RUN vim +PlugInstall +qall
RUN mkdir $HOME/.vim/backup
RUN mkdir $HOME/.vim/swap

RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
RUN zsh --rcs $HOME/.zshrc || true

ENTRYPOINT zsh
