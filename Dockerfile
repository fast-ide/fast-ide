FROM fastide/linuxbrew:19.04

USER developer

COPY bootstrap.sh /tmp/
COPY configs /tmp/configs
WORKDIR /tmp/
RUN /tmp/bootstrap.sh
