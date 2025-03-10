ARG BASE_IMAGE=ghcr.io/ublue-os/silverblue-main:latest

FROM ${BASE_IMAGE}

COPY build.sh /tmp/build.sh

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit

