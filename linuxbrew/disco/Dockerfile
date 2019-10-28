FROM ubuntu:19.04

RUN apt update -y && \
    apt upgrade -y && \
    apt install -y build-essential curl file git locales

RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment && \
    echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
    echo "LANG=en_US.UTF-8" > /etc/locale.conf && \
    locale-gen en_US.UTF-8

RUN useradd -m developer
USER developer

RUN git clone https://github.com/Homebrew/brew $HOME/.linuxbrew/Homebrew
RUN mkdir $HOME/.linuxbrew/bin
RUN ln -s ../Homebrew/bin/brew $HOME/.linuxbrew/bin
RUN eval $($HOME/.linuxbrew/bin/brew shellenv) && \
    echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>$HOME/.profile

ENV PATH=/home/developer/.linuxbrew/bin:/home/developer/.linuxbrew/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SHELL=/bin/bash
