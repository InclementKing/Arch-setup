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
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
useradd -m -g wheel ben
passwd ben
echo 'ben 	ALL=(ALL:ALL) ALL' >> /etc/sudoers
wget raw.githubusercontent.com/InclementKing/Arch-setup/master/systemSetup.sh
mv systemSetup.sh /home/ben/systemSetup.sh
chmod 777 /home/ben/systemSetup.sh
echo
echo success, clear to exit chroot