#!/usr/bin/env sh

# Best-effort cleanup helper: never fail the calling build step.
yay -Yccc --noconfirm || true

for path in \
  "$HOME/.cache/yay" \
  "$HOME/.config/yay" \
  "$HOME/.local/share/yay"
do
  rm -rf "$path" || true
done

rm -rf /tmp/yay* || true
sudo rm -rf /var/tmp/yay* || true

sudo rm -rf /root/.cache/yay /root/.config/yay /root/.local/share/yay || true

sudo rm -rf /var/cache/pacman/pkg/* || true
sudo rm -rf /var/lib/pacman/sync/* || true

exit 0
