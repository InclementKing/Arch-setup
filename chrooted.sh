#!/bin/bash
ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime
hwclock --systohc
echo en_US.UTF-8\ UTF-8 >> /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
echo Desktop > /etc/hostname
echo 127.0.1.1\	Desktop.localdomain\	Desktop >> /etc/hosts
systemctl enable dhcpcd.service
echo
echo enter root password
passwd
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
useradd -m -g wheel ben
echo "ben:pass" | chpasswd
echo 'ben 	ALL=(ALL:ALL) ALL' >> /etc/sudoers
#mv systemSetup.sh /home/ben/systemSetup.sh
#chmod 777 /home/ben/systemSetup.sh
chmod 777 systemSetup.sh
git clone https://github.com/inclementking/arch-setup/ /home/ben/arch-setup/
chmod -R /home/ben/arch-setup/
echo
echo success, clear to exit chroot