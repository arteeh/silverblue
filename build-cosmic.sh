#!/bin/bash

set -ouex pipefail

curl -Lo /etc/yum.repos.d/tailscale.repo https://pkgs.tailscale.com/stable/fedora/tailscale.repo

dnf5 install -y tailscale

dnf5 remove -y firefox firefox-langpacks
