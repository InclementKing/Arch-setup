#!/bin/bash
ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime
hwclock --systohc
echo en_US.UTF-8\ UTF-8 >> /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
echo Desktop > /etc/hostname
echo 127.0.1.1\	Desktop.localdomain\	Desktop >> /etc/hosts
systemctl enable dhcpcd.service
passwd
pacman -S grub intel-ucode
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
exit
