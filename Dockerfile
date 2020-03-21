ARG OS_FAMILY
ARG OS_VERSION
FROM fastide/bootstrap-${OS_FAMILY}:${OS_VERSION}

USER developer

COPY install.sh /tmp/
COPY configs /tmp/configs
WORKDIR /tmp/
RUN bash -c ". ~/.profile && /tmp/install.sh"
WORKDIR /home/developer
