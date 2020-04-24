ARG OS_FAMILY
ARG OS_VERSION
FROM fastide/bootstrap-${OS_FAMILY}:${OS_VERSION}

COPY install.sh /tmp/
COPY configs /tmp/configs
WORKDIR /tmp/
RUN /tmp/install.sh
