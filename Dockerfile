FROM ubuntu:19.04

RUN apt update -y && \
    apt upgrade -y && \
    apt install -y build-essential curl file git

RUN useradd -m developer
USER developer

COPY bootstrap.sh /tmp/
RUN /tmp/bootstrap.sh
