## Inactive

I've decided to move away from UBlue and back to Fedora. I'll leave this repo up as an example for anyone to try making their own OS images.

## My desktop Linux OS

This is essentially Fedora Silverblue, but with the following differences:

- Baked in extensions are removed. You can install extensions using the Extension Manager app.
- Baked in apps are removed except for Settings and the file manager. You can install apps using flatpak or the Warehouse app.
- Tailscale and Docker are included.

There's an NVIDIA version which includes its drivers, a server version that doesn't have a desktop, and lastly a version that uses the Cosmic desktop environment.

You can install this by installing Fedora Silverblue first, and then rebasing to this using the instructions below.

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
