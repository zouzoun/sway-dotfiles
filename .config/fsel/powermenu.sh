#!/usr/bin/env bash

trap 'kill -9 $PPID 2>/dev/null; exit' EXIT INT TERM

choice=$(printf '%s\n' \
    " Lock" \
    " Logout" \
    " Suspend" \
    " Hibernate" \
    " Shutdown" \
    " Reboot" \
    | fsel -d)

if [ -z "$choice" ]; then
    kill -9 $PPID 2>/dev/null
    exit 0
fi

case "$choice" in
    *Lock*)      swaylock -f -c 000000 ;;
    *Logout*)    swaymsg exit ;;
    *Suspend*)   systemctl suspend ;;
    *Hibernate*) systemctl hibernate ;;
    *Shutdown*)  systemctl poweroff ;;
    *Reboot*)    systemctl reboot ;;
esac
