FROM fastide/bootstrap-ubuntu:19.04

USER developer

COPY install.sh /tmp/
COPY configs /tmp/configs
WORKDIR /tmp/
RUN bash -c ". ~/.profile && /tmp/install.sh"
