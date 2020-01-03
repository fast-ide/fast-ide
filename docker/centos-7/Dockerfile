FROM fastide/linuxbrew-centos:7

USER developer

COPY install.sh /tmp/
COPY configs /tmp/configs
WORKDIR /tmp/
RUN bash -c ". ~/.profile && /tmp/install.sh"
