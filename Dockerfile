ARG OS_FAMILY
ARG OS_VERSION
FROM fastide/bootstrap-${OS_FAMILY}:${OS_VERSION}

COPY install.sh /tmp/
COPY configs /tmp/configs
RUN /tmp/install.sh && rm -rf /tmp/install.sh && rm -rf /tmp/configs
