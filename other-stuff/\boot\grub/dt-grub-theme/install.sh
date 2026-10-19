#!/bin/sh
set -eu

THEME_DIR="/boot/grub/themes/dt-grub-theme"
SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

if [ "$(id -u)" -ne 0 ]; then
    echo "Lancez ce script avec sudo : sudo $0" >&2
    exit 1
fi

mkdir -p "$THEME_DIR"
cp "$SCRIPT_DIR/theme.txt" "$THEME_DIR/theme.txt"
echo "Thème copié dans : $THEME_DIR/theme.txt"
echo
echo "Ajoutez ou adaptez ces lignes dans /etc/default/grub :"
echo '  GRUB_GFXMODE=auto'
echo '  GRUB_TERMINAL_OUTPUT=gfxterm'
echo '  GRUB_THEME="/boot/grub/themes/dt-grub-theme/theme.txt"'
echo
echo "Puis régénérez grub.cfg avec la commande adaptée à votre installation Gentoo."
