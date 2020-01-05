FROM fastide/bootstrap-debian:10

USER developer

COPY install.sh /tmp/
COPY configs /tmp/configs
WORKDIR /tmp/
RUN bash -c ". ~/.profile && /tmp/install.sh"
