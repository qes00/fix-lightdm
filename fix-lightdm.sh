#!/bin/bash
set -e
echo "=== Desinstalando LightDM ==="
apt purge -y lightdm lightdm-gtk-greeter slick-greeter lightdm-settings 2>/dev/null || true
apt autoremove -y
echo "=== Limpiando archivos ==="
rm -rf /etc/lightdm /var/log/lightdm /var/lib/lightdm
echo "=== Reinstalando ==="
apt update -q
apt install -y lightdm lightdm-gtk-greeter xorg xserver-xorg xserver-xorg-core
echo "=== Configurando ==="
echo "/usr/sbin/lightdm" > /etc/X11/default-display-manager
systemctl enable lightdm
systemctl reset-failed lightdm
systemctl start lightdm
echo "=== Estado final ==="
systemctl status lightdm --no-pager#!/bin/bash
set -e
echo "=== Desinstalando LightDM ==="
apt purge -y lightdm lightdm-gtk-greeter slick-greeter lightdm-settings 2>/dev/null || true
apt autoremove -y
echo "=== Limpiando archivos ==="
rm -rf /etc/lightdm /var/log/lightdm /var/lib/lightdm
echo "=== Reinstalando ==="
apt update -q
apt install -y lightdm lightdm-gtk-greeter xorg xserver-xorg xserver-xorg-core
echo "=== Configurando ==="
echo "/usr/sbin/lightdm" > /etc/X11/default-display-manager
systemctl enable lightdm
systemctl reset-failed lightdm
systemctl start lightdm
echo "=== Estado final ==="
systemctl status lightdm --no-pager