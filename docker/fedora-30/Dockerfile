FROM linuxbrew/fedora:30

USER developer

COPY bootstrap.sh /tmp/
COPY configs /tmp/configs
WORKDIR /tmp/
RUN bash -c ". ~/.profile && /tmp/bootstrap.sh"
