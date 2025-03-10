#!/bin/bash

set -ouex pipefail

curl -Lo /etc/yum.repos.d/tailscale.repo https://pkgs.tailscale.com/stable/fedora/tailscale.repo

dnf5 install -y tailscale

dnf5 remote -y ptyxis yelp firefox firefox-langpacks gnome-system-monitor gnome-tweaks gnome-tour gnome-classic-session gnome-shell-extension-apps-menu gnome-shell-extension-background-logo gnome-shell-extension-launch-new-instance gnome-shell-extension-places-menu gnome-shell-extension-window-list
