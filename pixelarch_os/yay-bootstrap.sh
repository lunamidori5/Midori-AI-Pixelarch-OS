#!/usr/bin/env bash

set -euo pipefail

# Install yay from AUR
sudo pacman -Sy --noconfirm
git clone --progress https://aur.archlinux.org/yay.git
cd yay
makepkg -csi --noconfirm
cd ..
sudo rm -rf yay

# Configure and run yay with cleanup
yay -Syu --noconfirm --devel --diffmenu=false --answerclean A --cleanafter --removemake --builddir /tmp/yay --sudoloop --save
clean-yay
