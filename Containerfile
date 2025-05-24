FROM ghcr.io/ublue-os/silverblue-main:latest

COPY b-add-docker.sh /tmp/b-add-docker.sh
COPY b-add-tailscale.sh /tmp/b-add-tailscale.sh
COPY b-remove-firefox.sh /tmp/b-remove-firefox.sh
COPY b-remove-gnomestuff.sh /tmp/b-remove-gnomestuff.sh

RUN mkdir -p /var/lib/alternatives && \
    /tmp/b-add-docker.sh && \
    /tmp/b-add-tailscale.sh && \
    /tmp/b-remove-firefox.sh && \
    /tmp/b-remove-gnomestuff.sh && \
    ostree container commit
