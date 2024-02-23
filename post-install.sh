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
#ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/systemctl #Don't use that no tab completion
##TODO currently rust client tldr `tealdeer` not on Alpine but Fedora install on Alpine when available
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/tldr
##TODO remove `tidy` from cloud-os if alpine package becomes available
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/tidy
##neo matrix won't work cause Alpine using musl, get it from Host
ln -sf /usr/bin/distrobox-host-exec /usr/local/bin/neo
