#!/bin/bash

set -ouex pipefail

dnf5 install -y containerd docker-cli docker-compose
