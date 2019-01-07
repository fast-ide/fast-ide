set -e

# apt-add-repository -y "ppa:ubuntu-toolchain-r/test" && apt update
# add-apt-repository -y ppa:neovim-ppa/stable && apt update

apt update && apt install -y gnome-shell ubuntu-gnome-desktop
apt install -y wget
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -

codename=$(lsb_release -sc)
apt-add-repository "deb http://apt.llvm.org/$codename/ llvm-toolchain-$codename-7 main"
apt install -y libcurl4-openssl-dev curl \
     g++-7 lcov gcovr cmake cmake-data clang-7 libclang-7-dev

apt install -y curl git git-extras zsh astyle python3-dev \
    neovim silversearcher-ag python-pip vifm \
    tmux exuberant-ctags valgrind gdb gconf2 docker.io \
    graphviz doxygen pandoc

apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev

git clone git://github.com/rkitover/vimpager
cd vimpager && make install && cd .. && rm -rf vimpager

if [ ! -d "/usr/local/PathPicker" ]; then
  git clone https://github.com/facebook/PathPicker.git /usr/local/PathPicker
  ln -s /usr/local/PathPicker/fpp /usr/local/bin/fpp
fi

ln -s /usr/bin/clang-7 /usr/bin/clang
ln -s /usr/bin/clang++-7 /usr/bin/clang++
ln -s /usr/bin/clang-cpp-7 /usr/bin/clang-cpp

ln -s /usr/lib/llvm-7/lib/libclang.so /usr/lib/libclang.so

chsh -s /bin/zsh vagrant
usermod -aG docker vagrant

git clone --recursive https://github.com/Andersbakken/rtags.git
cd rtags && mkdir build && cd build
cmake .. && make && make install
cd .. && rm -rf rtags
