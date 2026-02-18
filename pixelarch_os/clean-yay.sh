#!/usr/bin/env sh

# Best-effort cleanup helper: never fail the calling build step.
yay -Yccc --noconfirm || true

# Fully clear user cache content while keeping the directory.
rm -rf "$HOME/.cache/"* "$HOME/.cache/".[!.]* "$HOME/.cache/"..?* || true

# Clear temp areas for smallest possible resulting image layers.
sudo rm -rf /tmp/* /tmp/.[!.]* /tmp/..?* || true
sudo rm -rf /var/tmp/* /var/tmp/.[!.]* /var/tmp/..?* || true

# Keep configs intact; remove only yay data directories.
rm -rf "$HOME/.local/share/yay" || true

sudo rm -rf /root/.cache/* /root/.cache/.[!.]* /root/.cache/..?* || true
sudo rm -rf /root/.cache/yay /root/.local/share/yay || true

sudo rm -rf /var/cache/pacman/pkg/* || true
sudo rm -rf /var/lib/pacman/sync/* || true

exit 0
