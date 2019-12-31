FROM linuxbrew/centos:8

USER developer

COPY bootstrap.sh /tmp/
COPY configs /tmp/configs
WORKDIR /tmp/
RUN /tmp/bootstrap.sh
