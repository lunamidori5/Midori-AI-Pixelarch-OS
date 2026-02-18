#!/usr/bin/env sh

yay -Yccc --noconfirm || true

rm -rf "$HOME/.cache/"* "$HOME/.cache/".[!.]* "$HOME/.cache/"..?* || true

sudo rm -rf /tmp/* /tmp/.[!.]* /tmp/..?* || true
sudo rm -rf /var/tmp/* /var/tmp/.[!.]* /var/tmp/..?* || true

rm -rf "$HOME/.local/share/yay" || true

sudo rm -rf /root/.cache/* /root/.cache/.[!.]* /root/.cache/..?* || true
sudo rm -rf /root/.local/share/yay || true

sudo rm -rf /var/cache/pacman/pkg/* || true
sudo rm -rf /var/lib/pacman/sync/* || true

exit 0
