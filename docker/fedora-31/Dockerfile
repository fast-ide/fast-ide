FROM fastide/bootstrap-fedora:31

USER developer

COPY install.sh /tmp/
COPY configs /tmp/configs
WORKDIR /tmp/
RUN bash -c ". ~/.profile && /tmp/install.sh"
WORKDIR /home/developer
