#!/bin/sh
set -eu

# Synchroniser l'environnement graphique avec D-Bus et systemd
dbus-update-activation-environment --systemd \
    WAYLAND_DISPLAY DISPLAY SWAYSOCK \
    XDG_CURRENT_DESKTOP XDG_SESSION_TYPE

# Actualiser les portails après la disponibilité de la session Wayland
systemctl --user restart xdg-desktop-portal-gtk.service
systemctl --user restart xdg-desktop-portal-wlr.service
systemctl --user restart xdg-desktop-portal.service
