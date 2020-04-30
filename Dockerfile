ARG OS_FAMILY
ARG OS_VERSION
FROM fastide/toolbox-${OS_FAMILY}:${OS_VERSION}

COPY install.sh /tmp/
COPY configs /tmp/configs
RUN cd /tmp && ./install.sh
