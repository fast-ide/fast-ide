FROM golang:1.14-alpine
ENV USER root
COPY install.sh /tmp
RUN /tmp/install.sh && rm /tmp/install.sh
WORKDIR /root