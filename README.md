[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/silverblue)](https://artifacthub.io/packages/search?repo=silverblue)

## My desktop Linux OS, based on UBlue

This is essentially Fedora Silverblue, but with the following differences:

- Baked in extensions are removed. You can install extensions using the Extension Manager app
- Baked in apps are mostly removed. All apps are Flatpaks with the exception of Settings, Software, Disks and the file manager
- Tailscale is included

There's an NVIDIA version which includes its drivers, a server version that doesn't have a desktop, and lastly a version that uses the Cosmic desktop environment.

## Rebasing from another atomic Fedora system

First rebase to the unsigned image, to get the proper signing keys and policies installed:
```
rpm-ostree rebase ostree-unverified-registry:ghcr.io/arteeh/silverblue
```
Reboot:
```
systemctl reboot
```
Then rebase to the signed image, like so:
```
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/arteeh/silverblue
```
Reboot again
```
systemctl reboot
```
(NVIDIA only) Set up NVIDIA drivers
```
ujust configure-nvidia
```
Reboot again
```
systemctl reboot
```
