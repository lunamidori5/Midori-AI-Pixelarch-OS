#!/usr/bin/env sh

dir_bytes() {
  bytes=$(du -sb "$1" 2>/dev/null | awk '{print $1}')
  echo "${bytes:-0}"
}

sudo_dir_bytes() {
  bytes=$(sudo du -sb "$1" 2>/dev/null | awk '{print $1}')
  echo "${bytes:-0}"
}

cleanup_target_bytes() {
  total=0

  for path in "$HOME/.cache" "$HOME/.local/share/yay"
  do
    bytes=$(dir_bytes "$path")
    total=$((total + bytes))
  done

  for path in /tmp /var/tmp /root/.cache /root/.local/share/yay /var/cache/pacman/pkg /var/lib/pacman/sync
  do
    bytes=$(sudo_dir_bytes "$path")
    total=$((total + bytes))
  done

  echo "$total"
}

before_bytes=$(cleanup_target_bytes)
echo "clean-yay: cleanup target bytes before=${before_bytes}"

yay -Yccc --noconfirm || true

rm -rf "$HOME/.cache/"* "$HOME/.cache/".[!.]* "$HOME/.cache/"..?* || true

sudo rm -rf /tmp/* /tmp/.[!.]* /tmp/..?* || true
sudo rm -rf /var/tmp/* /var/tmp/.[!.]* /var/tmp/..?* || true

rm -rf "$HOME/.local/share/yay" || true

sudo rm -rf /root/.cache/* /root/.cache/.[!.]* /root/.cache/..?* || true
sudo rm -rf /root/.local/share/yay || true

sudo rm -rf /var/cache/pacman/pkg/* || true
sudo rm -rf /var/lib/pacman/sync/* || true

after_bytes=$(cleanup_target_bytes)
if [ "$before_bytes" -ge "$after_bytes" ]; then
  saved_bytes=$((before_bytes - after_bytes))
else
  saved_bytes=0
fi

echo "clean-yay: cleanup target bytes after=${after_bytes}"
echo "clean-yay: reclaimed bytes=${saved_bytes}"

exit 0
