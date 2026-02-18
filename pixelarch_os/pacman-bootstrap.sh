#!/usr/bin/env bash

set -euo pipefail

#pacman -Syu --noconfirm --needed curl
pacman -Syu --noconfirm --needed git
pacman -Syu --noconfirm --needed sudo-rs
pacman -Syu --noconfirm --needed base-devel
#pacman -Syu --noconfirm --needed go

ln -sf /usr/bin/sudo-rs /usr/bin/sudo

pacman -Sccc --noconfirm

rm -rf /var/cache/pacman/pkg/* || true
rm -rf /var/lib/pacman/sync/* || true
rm -rf /tmp/* /tmp/.[!.]* /tmp/..?* || true
rm -rf /var/tmp/* /var/tmp/.[!.]* /var/tmp/..?* || true
rm -rf /root/.cache/* /root/.cache/.[!.]* /root/.cache/..?* || true
