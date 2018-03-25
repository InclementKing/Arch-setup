#!/bin/bash
ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime
hwclock --systohc
echo en_US.UTF-8\ UTF-8 >> /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
echo Desktop > /etc/hostname
echo 127.0.1.1\	Desktop.localdomain\	Desktop >> /etc/hosts
systemctl enable dhcpcd.service
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

echo "root:root" | chpasswd
useradd -m -g wheel ben
echo "ben:pass" | chpasswd
echo 'ben 	ALL=(ALL:ALL) ALL' >> /etc/sudoers

git clone https://github.com/inclementking/arch-setup/ /home/ben/arch-setup/

curl -O https://download.sublimetext.com/sublimehq-pub.gpg && pacman-key --add sublimehq-pub.gpg && pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
pacman -Syu sublime-text

echo
echo success, clear to exit chroot