#!/bin/sh
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/flatpak
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/rpmbuild
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/podman
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/rpm-ostree
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/gnome-terminal
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/mupdf
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/notify-send
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/mpd
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/mpc
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/ncmpcpp
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/playerctl
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/dbus-send
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/gsettings
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/xdg-open
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/systemctl
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/tldr #TODO rm rust client tldr 'tealdeer' from host as soon as alpine version exists
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/tidy #TODO rm tidy from host as soon as alpine version exists
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/neo #neo matrix won't work cause Alpine using musl, get it from Host
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/exercism #TODO rm exercism from host as soon as alpine version exists. (golang self compiled fails)
