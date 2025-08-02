#!/bin/bash

set -ouex pipefail

dnf5 remove -y ark gnome-disk-utility gnome-system-monitor cosmic-edit cosmic-player

dnf5 autoremove -y
