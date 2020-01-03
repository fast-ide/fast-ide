set -ex

# ----------------------------------------------------------------------------
# Install brew packages
# ----------------------------------------------------------------------------

brew config

brew install --build-bottle zsh \
             python@2 \
             python@3 \
             pyenv \
             node \
             nvm \
             vim \
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
             jq \
             jid \
             httpie \
             ncdu \
             vimpager

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
